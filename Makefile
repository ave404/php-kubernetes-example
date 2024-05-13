
up: down
    # Сборка контейнера
	docker build . \
		--file .docker/php/Dockerfile \
		--tag php-kubernetes-example/php:latest
    # Установка зависимостей
	docker run --rm -it \
		-v $$PWD/src:/var/www/html \
		php-kubernetes-example/php:latest \
		composer install
    # Создание кластера
	kind create cluster --config kind.yaml
    # Загрузка контейнера
	kind load \
		docker-image php-kubernetes-example/php:latest \
		--name php-kubernetes-example
    # Добавляем ingress
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
    # Запуск DB
	helm upgrade --install --wait php-kubernetes-example-db .helm/db
    # Запуск приложения
	helm upgrade --install --wait php-kubernetes-example-app .helm/app

down:
	kind delete cluster --name php-kubernetes-example
