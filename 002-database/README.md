# Database

System Design

![](system-design.png)

# Build and Deploy

```
cd 002-database
skaffold run -f skaffold.yaml -p dev

skaffold run --cache-artifacts=false -f skaffold.yaml -p dev
skaffold run --no-prune=false --cache-artifacts=false -f skaffold.yaml -p dev
skaffold delete -f skaffold.yaml
```

```
kubectl get all -l app=litebase
kubectl get all
kubectl get pods
kubectl get services
kubectl get deployments
kubectl get replicasets
kubectl port-forward --address 0.0.0.0 service/database-hello-world 30008:80

kubectl port-forward --address 0.0.0.0 service/database 5432:5432
kubectl port-forward --address 0.0.0.0 service/backend 8000:8000

kubectl port-forward --address 0.0.0.0 service/litebase-frontend-database 30008:80
kubectl exec -it pod/litebase-backend-c45b8ff46-66wxp -- /bin/sh
kubectl exec -it pod/litebase-database-596969fbcf-zhh85 -- /bin/sh


> curl $(minikube ip):30008

```
Database
```

> curl $(minikube ip):30009/api/users/?format=json

```
[{"id":1,"username":"user1","created_at":"2023-10-22T02:10:08.925179Z","updated_at":"2023-10-22T02:10:08.925179Z"},{"id":2,"username":"user2","created_at":"2023-10-22T02:10:08.925179Z","updated_at":"2023-10-22T02:10:08.925179Z"},{"id":3,"username":"user3","created_at":"2023-10-22T02:10:08.925179Z","updated_at":"2023-10-22T02:10:08.925179Z"}]
```

Connect

postgresql://myuser:mypassword@10.40.116.126:5432/mydatabase

ENV POSTGRES_DB=mydatabase
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword