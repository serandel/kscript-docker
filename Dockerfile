FROM alpine:3.9

MAINTAINER serandel@gmail.com

# Install SDKMAN!
RUN curl -s "https://get.sdkman.io" | bash

RUN source /root/.sdkman/bin/sdkman-init.sh && \
    sdk install java && \
    sdk install maven && \
    sdk install kotlin && \
    sdk install kscript

ENTRYPOINT [ "/usr/bin/env", "kscript" ]
CMD        [ "--help" ]
