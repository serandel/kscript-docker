FROM alpine:3.9

MAINTAINER serandel@gmail.com

# Install bash, curl and other stuff I've copied from other Dockerfiles and I reckon are necessary for SDKMAN! :)
RUN apk upgrade --update && \
    apk add --no-cache --update libstdc++ curl ca-certificates bash zip unzip openssl && \
    update-ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \

# Install SDKMAN!
RUN curl -s "https://get.sdkman.io" | bash

RUN source /root/.sdkman/bin/sdkman-init.sh && \
    sdk install java && \
    sdk install maven && \
    sdk install kotlin && \
    sdk install kscript

ENTRYPOINT [ "/usr/bin/env", "kscript" ]
CMD        [ "--help" ]
