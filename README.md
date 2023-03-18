## IntelEnclaveBaseImage

### Build
```shell
docker build -t intelenclave .
```

### Run
```shell
# if you don't need bind mounts, use the following cmd
docker run --device /dev/sgx_enclave --device /dev/sgx_provision --name intelenclave -dit intelenclave

# or you can use this one to bind a folder of the container with a folder of the host.
# NOTE: bind only the necessary folders since any changes in the container will also have effect on the host.
# Here '/code' in the container is exactly the same as '/home/tim/code' on the host. 
docker run --device /dev/sgx_enclave --device /dev/sgx_provision --name intelenclave --mount type=bind,source=/home/bchenba/code,target=/code -dit intelenclave
```

### Exec
```shell
docker exec -it intelenclave bash
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