# Python

### Build latest

```bash
docker build . -t madhosoi/theia-python:0.3.12
docker build . -t madhosoi/theia-python:latest
```

### Build next

```bash
docker build --build-arg version=next . -t madhosoi/theia-python:next
```

### Run locally on Linux or OS X

```bash
docker run -it --init -p 3000:3000 -v "$(pwd):/home/project" madhosoi/theia-python:latest
```

```bash
docker run -it --init -p 3000:3000 -v "$(pwd):/home/project" -e UID=$(id -u) -e GID=$(id -g) -e USERNAME=$(id -u -n) -e GROUPNAME=$(id -g -n) madhosoi/theia-python:latest
```

### Push to Docker Hub

```bash
docker login
docker push madhosoi/theia-python:${VERSION}
```

### Pull the image from Docker Hub

```
docker pull madhosoi/theia-python:${VERSION}
```
