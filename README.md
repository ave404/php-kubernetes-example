# php-kubernetes-presentation

Для работы требуется [kubectl](https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/), [helm](https://helm.sh/ru/docs/intro/install/), [kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation).

## Запуск

```shell
make up
```

Открыть http://127.0.0.1 или http://127.0.0.1/api/info

Посмотреть список POD проекта

```shell
kubectl get po
```
