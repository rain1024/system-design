# Single Server

```mermaid
graph LR
    subgraph User
        WB[Web Browser]
        MA[Mobile App]
    end

    User -->|api.mysite.com| Server
    User -->|mysite.com| Server
```