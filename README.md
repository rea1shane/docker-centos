# CentOS 8

## Build

```shell
make build
```

## Run

```shell
make run HOSTNAME={hostname} SSH_PORT={ssh_port}
```

## Setting root password after run

```shell
docker exec -it {hostname} /bin/zsh
passwd
```
