# Docker CentOS

[![docker-image-ci-7](https://github.com/rea1shane/docker-centos/actions/workflows/docker-image-ci-7.yml/badge.svg)](https://github.com/rea1shane/docker-centos/actions/workflows/docker-image-ci-7.yml)
[![docker-image-ci-8](https://github.com/rea1shane/docker-centos/actions/workflows/docker-image-ci-8.yml/badge.svg)](https://github.com/rea1shane/docker-centos/actions/workflows/docker-image-ci-8.yml)

> View the sshd-only version: https://github.com/rea1shane/docker-centos-sshd

Docker CentOS with sshd, Zsh and utilities.

The default password for root is `1`.

## Usage

Run CentOS 7 based image:

```shell
docker run -d \
    --name centos7 \
    --hostname centos7 \
    rea1shane/centos:7
```

Run CentOS 8 based image:

```shell
docker run -d \
    --name centos8 \
    --hostname centos8 \
    rea1shane/centos:8
```

See more info:

- [CentOS 7 based image](https://github.com/rea1shane/docker-centos/tree/main/7)
- [CentOS 8 based image](https://github.com/rea1shane/docker-centos/tree/main/8)
