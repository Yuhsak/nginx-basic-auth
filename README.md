# nginx-basic-auth

Simple HTTP Basic Authentication Docker Container using nginx

## Usage

```sh
docker pull nginx-basic-auth:latest
docker run -p 8000:80 -p 8080:8080 -e PROXY_PASS=http://web/ -e USERNAME=user -e PASSWORD=password nginx-basic-auth
```
