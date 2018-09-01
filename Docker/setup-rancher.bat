@ECHO OFF

REM
REM Create volume for persistence
REM
docker volume create --name rancher-var-lib --driver local

REM
REM Run Rancher with the option to restart
REM
docker run -d --restart=unless-stopped -p 8080:80 -p 8443:443 -v rancher-var-lib:/var/lib/rancher/ rancher/rancher:v2.0.8
