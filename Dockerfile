FROM openjdk:11

WORKDIR C:/

COPY . .

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue';"]

EXPOSE 8080

RUN Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RUN choco install geoserver --version 2.23.0 -y

RUN Copy-Item bin/extensions/* C:\tools\GeoServer\webapps\geoserver\WEB-INF\lib

#Start geoserver
CMD tools/geoserver/bin/startup.bat
