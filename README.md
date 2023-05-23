# Windows docker image of Geoserver with SQL Server plugin

- Geoserver v2.23.0
- Geoserver SQL Server extension v2.23.x

## Build image

`docker build -t geoserver .`

## Run container:

`docker run -p 8080:8080 -d`

## Default credentials:

```
Username: admin
Password: geoserver
```
