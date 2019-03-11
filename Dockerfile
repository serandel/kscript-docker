# Alpine had problems with Java and SDKMAN!
# lchmod (file attributes) error: Not supported
# https://bugs.alpinelinux.org/issues/8089

FROM ubuntu:cosmic

MAINTAINER serandel@gmail.com

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
	apt-get -y install curl zip unzip && \
    rm -rf /var/lib/apt/lists/*

# Install SDKMAN!
RUN curl -s "https://get.sdkman.io" | bash

RUN source /root/.sdkman/bin/sdkman-init.sh && \
    sdk install java 8.0.202-zulu && \
    sdk install maven 3.6.0 && \
    sdk install kotlin 1.3.21 && \
    sdk install kscript 2.7.1

ENTRYPOINT source /root/.sdkman/bin/sdkman-init.sh && /usr/bin/env kscript "$0" "$@"
CMD        [ "--help" ]
