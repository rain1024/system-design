# 100 days of system design

Welcome to my '100 Days of System Design,' a comprehensive journey into the world of designing scalable, reliable, and efficient systems.

Here is my journey log. I will update this log every day.

Day 1 begin on 2023-10-09.

# Day 1-2: 001 Single Server

Day 1: My journey starts. I decide to read the book 'System Design Interview - An Insider's Guide' by Alex Xu. I also create a repository on Github to track my progress.

I create a simple minukube cluster and deploy a simple single server app to it. I use skaffold to build and deploy my app.

Day 2: Yay! nginx server is running.

# Day 3-: 002 Database - LiteBase App

Day 3: I move to the next section of chapter 1, which is about database. Now I must create two services, one for the database and one for the web server.

Day 4: Database service is running. However I am not able to connect to it from the web server.

Day 5: I create labels for the pods, services, deployments and replicasets. Learn new thing about kubectl. I can use -l to filter the output of kubectl get.

kubectl get all -l app=litebase

I create a django app to connect to the database.

Day 6: I create a django app to connect to the database. I am able to connect to the database from the django app.
