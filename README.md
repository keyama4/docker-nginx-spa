![dockerhub:keyama4/nginx-spa](https://img.shields.io/badge/dockerhub-keyama4/nginx--spa-blue.svg) 

## Description

This is a Docker image used to serve a Single Page Application using nginx.

## How To Run

### First Way

```
$ docker pull keyama4/nginx-spa
$ cd <YOUR_SPA_BUILD_RESULT_DIR>
$ docker run -p 8080:80 -v $PWD:/app keyama4/nginx-spa:latest
```

Access `http://localhost:8080`.

### Second Way

Add your Dockerfile shown as below.

```
FROM keyama4/nginx-spa:latest
COPY <YOUR_SPA_BUILD_RESULT_DIR> /app
```

```
$ docker build -t <YOUR_DOCKER_IMAGE_NAME> . 
$ docker run -p 8080:80 
```

Access `http://localhost:8080`.

### Third Way
Copy [docker-compose.yml](https://github.com/keyama4/docker-nginx-spa/blob/master/docker-compose.yml) to anywhere you want.  

Fix <YOUR_SPA_BUILD_RESULT_DIR>.

```
$ docker-compose up 
```
Access `http://localhost:8080`.
