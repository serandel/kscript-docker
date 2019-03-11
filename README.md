# kscript-docker

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/serandel/kscript.svg)

Docker image to run [kscript](https://github.com/holgerbrandl/kscript) (Kotlin scripting) without needing to install it.

The image is labelled with the same version number as kscript, with the underlying dependencies as updated as possible.

The base image is Alpine, with Java, Maven, Kotlin and kscript installed with [SDKMAN!](https://sdkman.io/).