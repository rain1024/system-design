# Single Server

```mermaidjs
graph LR
    subgraph User
        WB[Web Browser]
        MA[Mobile App]
    end

    User -->|api.mysite.com| Server
    User -->|mysite.com| Server

    subgraph Server
        WS[Web Server]
    end

    User -->|api.mysite.com| DNS
    DNS --> |15.125.23.214| User

    subgraph DNS
        D[DNS Server]
    end
```