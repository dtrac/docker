# docker

<img src="https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png"  width="120" height="120">

## Getting Started

- Pull latest image from nginx repository on Docker Hub registry into image cache:

```bash
docker pull nginx:latest
```

- Run a container named web1 from the nginx image in detached mode, mapping port 80 from the container to a dynamic port on the Docker host between 49153 and 65535:

```bash
docker run --name web1 -P -d nginx:latest
```

- Verify the port mappings:

```bash
docker container ps
```

- Verify that nginx is up and running:

```bash
curl http://localhost:<port>
```

- Stop the container

```bash
docker container stop <container id>
```

- Remove any stopped containers:

```bash
docker container prune --force
```
