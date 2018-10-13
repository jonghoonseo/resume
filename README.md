# resume

## Build

This repository is built using docker.

### Prerequisite

Docker

[Docker for mac](https://docs.docker.com/docker-for-mac/install/)


### Build

Execute the following commands:

```
$ docker run --rm -w "/doc" -v "$PWD":/doc jonghoonseo/tex-with-nanumgothic make
```

or run `build.sh` script