# PodMatrix

Inspired by [Christian Labisch](https://www.redhat.com/sysadmin/users/christian-labisch)'s article [Enter the Matrix: Create your own containerized Matrix animation](https://www.redhat.com/sysadmin/containerized-matrix-animation), I thought it would be fun to recreate the neat little exercise built into an image directly.

There's nothing new here, just a fun image and toy!

![Matrix in a Terminal](/img/matrix.png)

## How to build

Christian's article used Podman to create a container and modify it to add the cmatrix binary.  This example has a Dockerfile, and can be built with Podman to create the image directly.  The best thing about Podman: it can be run as your normal unprivileged user without root or sudo!

```bash

$ podman build -t matrix .

```

## How to run

The matrix container can be run directly to fire up an instance of the Matrix on your machine:


```bash

# Press 'q' or 'CTRL-C' to exit the animation

$ podman run -it matrix

```

Arguments to the cmatrix binary can be passed directly as arguments to the container run by Podman:

```bash

$ podman run -it matrix -h

```

