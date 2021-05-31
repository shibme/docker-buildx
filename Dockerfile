FROM debian
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl git gnupg2 lsb-release software-properties-common wget && \
    wget -qO - https://download.docker.com/linux/debian/gpg | apt-key add - && \
    export ARCH_TYPE=$(dpkg --print-architecture) && add-apt-repository "deb [arch=$ARCH_TYPE] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && apt-get install -y docker-ce-cli binfmt-support qemu-user-static