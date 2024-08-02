# php-kubernetes-example

Example PHP application with Kubernetes (Laravel, Nginx, PostgreSQL). 

Requirements: [kubectl](https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/), [helm](https://helm.sh/ru/docs/intro/install/), [kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation).

## Start

```shell
make up
```

Open http://127.0.0.1 or http://127.0.0.1/api/info

View project POD list

```shell
kubectl get po
```

## Presentation

Presentation: https://ave404.github.io/php-kubernetes-presentation/

Source code: [ave404/php-kubernetes-presentation](https://github.com/ave404/php-kubernetes-presentation)
