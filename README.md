# geoserver-docker

Geoserver Windows + SQL Server plugin docker image

- Geoserver v2.19.2
- Geoserver SQL Server extension v2.19.2 ([geoserver-2.19.2-sqlserver-plugin.zip](https://sourceforge.net/projects/geoserver/files/GeoServer/2.19.2/extensions/))

Build image:

`docker build -t geoserver .`

Start container:

`docker run -p 8080:8080 -d filoa86/geoserver:latest`

Default credentials:

```
Username: admin
Password: geoserver
```
