FROM postgres:13

# Optional: Set environment variables
ENV POSTGRES_DB=mydatabase
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword

COPY ./db-init-scripts/*.sql /docker-entrypoint-initdb.d/