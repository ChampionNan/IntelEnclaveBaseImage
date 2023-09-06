## IntelEnclaveBaseImage

### Build
```shell
docker build -t test .
```

### Run
```shell
# if you don't need bind mounts, use the following cmd
docker run --name test -dit test

# or you can use this one to bind a folder of the container with a folder of the host.
# NOTE: bind only the necessary folders since any changes in the container will also have effect on the host.
# Here '/code' in the container is exactly the same as '/home/tim/code' on the host. 
docker run --name test --mount type=bind,source=/home/bchenba/code,target=/code -dit test
```

### Exec
```shell
docker exec -it test bash
```

### Test
```
- cd /opt/intel/sgxsdk/SampleCode
- source ./opt/intel/sgxsdk/environment
- make build
- make run
- exit
```

### List containers
```shell
docker container ls
```

### Kill a container
```shell
docker container kill ${CONTAINER_ID} or docker container stop ${CONTAINER_ID} && docker container prune
```

### Remove a container
```shell
docker container rm ${CONTAINER_ID}
```