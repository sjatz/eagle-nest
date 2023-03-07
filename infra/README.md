# Recipe to run the necessary postgres database in a docker container

1. Create the volumes for the database and pgadmin
```
docker volume create pensenbuch-postgres-db
docker volume create pensenbuch-pgadmin
```

2. Start postgres database and pgadmin

```shell
docker-compose --env-file .env up -d
```
3. Connect to pgadmin

http://localhost:15432

4. Setup a new database
- -> Add new Server
    - General
        - name: docker-postgres
    - Connection
        - Host: postgres
        - Username: ${POSTGRES_USER}
        - Password: ${POSTGRES_PASSWORD}

- -> Create Login/Group Role
    - General
        - Name: pensenbuch
    - Definition
        - Password: postgres
    - Privileges
        - Can login?: yes
        - Create databases?: yes
