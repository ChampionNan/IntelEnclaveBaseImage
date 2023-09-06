FROM ubuntu:22.04 as sgxbase

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt-get clean && apt-get update && apt-get install sudo

CMD [ "/bin/bash" ]