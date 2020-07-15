# aem-dispatcher-docker
This is an reference repo to setup AEM dispatcher with example configurations.


#### Follow below steps
- Add the HOST_IP and PORT
0. Go to `/src/conf.d/variables/default.vars` replace the strikethrough values as shown below
    ``
    Define AEM_IP ~192.168.1.18~
    Define AEM_HOST ~192.168.1.18~
    Define AEM_PORT ~4503~
    ``
- Steps to bring up the dispatcher
0. `docker build -t httpd-image . `
0. `docker run -p 8080:80 -e PUBLISH_DOMAIN=172.17.0.1 -e PUBLISH_PORT=4503 httpd-image`

