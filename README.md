# Django Request Counter Helm

Example helm Charts: mysql, django, varnish

Django application storing how many requests hit the server in a mysql db, with varnish in front.

```
kubectl create namespace dev
helmfile -f helmfile.yaml -n dev apply
```

```
kubectl port-forward -n dev service/varnish 9000:80
http://localhost:9000
```