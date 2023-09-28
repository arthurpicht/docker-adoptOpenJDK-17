# docker-adoptOpenJDK-17

Dockerfile for a [dockerimage]() containing Adoptium OpenJDK 17 on
[Debian 12](https://github.com/arthurpicht/docker-debian-12)

## Build image locally

    docker build -t arthurpicht/debian-12:latest https://github.com/arthurpicht/docker-debian-12.git2
    docker build -t arthurpicht/adoptopenjdk-17:latest https://github.com/arthurpicht/docker-adoptOpenJDK-17.git 

## Update History:

* 2021-05-21: jdk-11.0.11+9 from 21 April 2021, provided by [openjdk.net](https://adoptopenjdk.net/)
* 2021-12-01: jdk-11.0.13+8 from 21 October 2021, provided by [adoptium.net](https://adoptium.net/); debian 11

## References

* [My images on dockerhub](https://hub.docker.com/search?q=arthurpicht&type=image)
* [adoptium archive](https://adoptium.net/archive.html?variant=openjdk17)