FROM debian
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl git gnupg2 lsb-release software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN export ARCH_TYPE=$(dpkg --print-architecture) && add-apt-repository "deb [arch=$ARCH_TYPE] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli binfmt-support qemu-user-static