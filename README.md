# Overview
Docker image for redirecting http traffic to https

## Usage

```bash
docker build -t docker-http-redirect .
docker run -it --rm -p 80:80 -p 443:443 docker-http-redirect
```

