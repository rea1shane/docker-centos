# Docker CentOS 8

The default password for root is `1`.

## Usage

```shell
docker run -d \
    --name centos8 \
    --hostname centos8 \
    rea1shane/centos:8
```

or

```shell
make run HOSTNAME=centos8
```

## Build

```shell
make build
```
