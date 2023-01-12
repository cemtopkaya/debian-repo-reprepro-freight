FROM ubuntu:jammy
RUN apt update
RUN apt install -y nano gnupg reprepro wget curl iputils-ping net-tools nano nginx
CMD tail -f /dev/null