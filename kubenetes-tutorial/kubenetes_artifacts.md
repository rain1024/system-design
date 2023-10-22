```
graph TB

    subgraph "Kubernetes Cluster"
        svc[Service]
        deploy[Deployment]
        rs[ReplicaSet]
        pod1[Pod1]
        pod2[Pod2]
        pod3[Pod3]
        cm[ConfigMap]
        secret[Secret]
    end

    svc --> |"Routes traffic to"| pod1
    svc --> |"Routes traffic to"| pod2
    svc --> |"Routes traffic to"| pod3

    deploy --> |"Manages"| rs
    rs --> |"Manages"| pod1
    rs --> |"Manages"| pod2
    rs --> |"Manages"| pod3

    pod1 --> |"Can use"| cm
    pod2 --> |"Can use"| cm
    pod3 --> |"Can use"| cm

    pod1 --> |"Can use"| secret
    pod2 --> |"Can use"| secret
    pod3 --> |"Can use"| secret

    classDef k8s fill:#ddd,stroke:#fff,stroke-width:2px;
    class svc,deploy,rs,pod1,pod2,pod3,cm,secret k8s;
```