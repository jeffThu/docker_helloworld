# DOCKER HELLO WORLD

## build image
```
$ docker build -f build/Dockerfile -t docker_helloworld:1.0 https://github.com/jeffThu/docker_helloworld.git#main
```

## run image
```
$ docker run -d docker_helloworld:1.0

$ docker exec -it 945d5a47dffb /bin/sh 
/app # ls
helloworld.sh
/app # exit
```

## push image to docker hub
```
$ docker login

$ docker tag docker_helloworld:1.0 pengtao3285/docker_helloworld:1.0 
$ docker images
REPOSITORY                      TAG       IMAGE ID       CREATED          SIZE
docker_helloworld               1.0       e1181d8d7843   10 minutes ago   7.79MB
pengtao3285/docker_helloworld   1.0       e1181d8d7843   10 minutes ago   7.79MB

$ docker push pengtao3285/docker_helloworld:1.0
```