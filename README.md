# docker-skydns

[![Docker Pulls](https://img.shields.io/docker/pulls/thavel/skydns.svg)](https://hub.docker.com/r/thavel/skydns)

Alpine based Docker image with [SkyDNS](https://github.com/skynetservices/skydns).

## Getting started

Download the image from [Dockerhub](https://hub.docker.com/r/thavel/skydns):

```bash
docker pull thavel/skydns
```

### Basic usage example

```bash
docker run --rm -p 53:53/udp thavel/skydns [options]
```

Use `--help` for the exhaustive list of options.
