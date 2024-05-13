{{- define ".helm.php" }}
image: php-kubernetes-example/php:latest
imagePullPolicy: Never
securityContext:
  runAsUser: 1000
  runAsGroup: 1000
volumeMounts:
  - name: source-code
    mountPath: /var/www/html
env:
  - name: DB_CONNECTION
    value: 'pgsql'
  - name: DB_HOST
    value: 'php-kubernetes-example-db'
  - name: DB_DATABASE
    value: 'postgres'
  - name: DB_USERNAME
    value: 'postgres'
  - name: DB_PASSWORD
    value: 'password'
{{- end }}

{{- define ".helm.php_mounts" }}
- name: source-code
  hostPath:
    path: /project/src
{{- end }}
