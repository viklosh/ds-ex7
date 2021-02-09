# ds-ex7
There are two services in the docker-compose. They are use shared named volume.
- maven_builder: is for maven building test java app. It builds war file and delete all other content on shared volume.
- tomcat: is for running test app. It  mounts shared volume with war file to /usr/local/tomcat/webapps
