# aem-dispatcher-docker
This is an reference repo to setup AEM dispatcher with example configurations.

#### Pre-requisite
0. Download Docker from `https://www.docker.com/products/docker-desktop`
0. Your AEM publisher should be running and should have valid content pages that are accessible from browser. ex: `localhost:4503/content/wknd/us/en.html`

#### Follow below steps
- Add the HOST_IP and PORT if you want to hard-code the IP and port in dispatcher configuration. 
You can skip this step as this is being passed in docker run commnad in the next step.
0. Go to `/src/conf.d/variables/default.vars` replace the IP and PORT values as shown below
    ```bash
    Define AEM_IP 192.168.1.18
    Define AEM_HOST 192.168.1.18
    Define AEM_PORT 4503
    ```
0. You can customize almost everything by changing something inside `src` folder. 
Make sure if you do a major folder change you need to do the same change in dockerfile as well regarding the location.

- Steps to bring up the dispatcher
0. `docker build -t httpd-image . `
0. `docker run -p 8080:80 -e PUBLISH_DOMAIN=host.docker.internal -e PUBLISH_IP=host.docker.internal -e PUBLISH_PORT=4503 --name httpd-container httpd-image`
0. Test by browsing `localhost:8080`. Try a valid URL like `localhost:8080/content/wknd/us/en.html` to verify that it's working or not.

#### Some docker commands
0. `docker ps` to check current status of all running container
0. `docker container ls -a` to check list of available container
0. `docker container rm container_name_or_id_here` to delete a docker container
0. `docker images` to check list of available images
0. `docker rmi image_name_or_id_here` to delete a docker image
0. `docker container prune` to delete all containers
0. `docker image prune -a` to delete all images
0. `docker exec -it container_name_or_id /bin/bash` to ssh inside the container

#### Some more points
0. `host.docker.internal` is the alias for localhost of your host machine from docker. In case this doesn't work you can try your local LAN IP to replace this.
0. MAC: `ifconfig`, Windows: `ipconfig` to find your local LAN IP. You can test the LAN IP directly in your browser by using `198.0.1.18:4502` instead of `localhost:4502` where 198.0.1.18 should be your LAN IP you got from the previous point command.



Inspired by https://hub.docker.com/r/aemcloud/dispatcher
