image is pushed to docker hub

$ docker build -t docker_helloworld:1.0 .
$ docker run -d docker_helloworld:1.0

$ docker exec -it 945d5a47dffb /bin/sh 
/app # ls
hello_world.sh
/app # exit

$ docker login
$ docker tag docker_helloworld:1.0 pengtao3285/docker_helloworld:1.0 
$ docker images
REPOSITORY                      TAG       IMAGE ID       CREATED          SIZE
docker_helloworld               1.0       e1181d8d7843   10 minutes ago   7.79MB
pengtao3285/docker_helloworld   1.0       e1181d8d7843   10 minutes ago   7.79MB

$ docker push pengtao3285/docker_helloworld:1.0