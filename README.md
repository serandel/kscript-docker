# kscript-docker

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/serandel/kscript.svg)

Docker image to run [kscript](https://github.com/holgerbrandl/kscript) (Kotlin scripting) without needing to install it.

The image is labelled with the same version number as kscript, with the underlying dependencies as updated as possible.

The base image is Ubuntu, with Java, Maven, Kotlin and kscript installed with [SDKMAN!](https://sdkman.io/).

## Usage with inline code

`docker run -i serandel/kscript 'println("Hello, world!")'`

## Usage with a script from outside the container

`docker run -i serandel/kscript - < script.kts`

This will make kscript read the code from `stdin` while piping the file. Be aware that the `-i` flag is needed to have `stdout` redirected outside the container.

## Volume

It's highly advisable to create a volume for `/root/.kscript` so the JARs are cached between different invocations to containers.

`docker run -i -v kscript:/root/.kscript serandel/kscript 'println("Hello, world!")'`
