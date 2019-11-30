# Docker FRP

## Getting started

```shell
docker run --rm -it -e TOKEN=key -e FRPS_PORT=8001  -e REMOTE_PORT=6000 test frps
docker run --rm -it -e TOKEN=key -e FRPS_ADDR=127.0.0.1 -e FRPS_PORT=8001 -e LOCAL_PORT=5000 -e REMOTE_PORT=6000 test frpc
```

