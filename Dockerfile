FROM ubuntu:jammy #Kernel version of the host

RUN apt-get update &&  apt-get install -y linux-tools-$(uname -r) make clang llvm gcc-multilib libbfd-dev curl perl gnupg2 git htop bash lsb-release apt-transport-https ca-certificates 

RUN echo "deb [trusted=yes] https://repo.iovisor.org/apt/xenial xenial-nightly main" | tee /etc/apt/sources.list.d/iovisor.list

RUN apt-get update && apt-get install -y bpfcc-tools libbpf-dev linux-headers-$(uname -r)

ENTRYPOINT ["/bin/bash"]
