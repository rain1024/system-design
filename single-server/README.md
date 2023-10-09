# Single Server

```mermaid
graph TD
    A[Client] --> B[Load Balancer]
    B --> C[Single Server]
    C --> D[Database]
```