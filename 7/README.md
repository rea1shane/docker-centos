# Docker CentOS 7

The default password for root is `1`.

## Usage

```shell
docker run -d \
    --name centos7 \
    --hostname centos7 \
    rea1shane/centos:7
```

or

```shell
make run HOSTNAME=centos7
```

## Build

```shell
make build
```
