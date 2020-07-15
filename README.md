# aem-dispatcher-docker
This is an reference repo to setup AEM dispatcher with example configurations.


#### Follow below steps
- Add the HOST_IP and PORT
0. Go to `/src/conf.d/variables/default.vars` replace the IP and PORT values as shown below
    ```bash
    Define AEM_IP 192.168.1.18
    Define AEM_HOST 192.168.1.18
    Define AEM_PORT 4503
    ```
- Steps to bring up the dispatcher
0. `docker build -t httpd-image . `
0. `docker run -p 8080:80 --name httpd-container httpd-image`

#### Some docker commands
0. `docker ps` to check current status of all running container
0. `docker container ls -a` to check list of available container
0. `docker container rm container_name_or_id_here` to delete a docker container
0. `docker images` to check list of available images
0. `docker rmi image_name_or_id_here` to delete a docker image
0. `docker container prune` to delete all containers
0. `docker image prune -a` to delete all images
0. `docker exec -it container_name_or_id /bin/bash` to ssh inside the container
