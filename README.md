# docker-adoptOpenJDK-17

Dockerfile for a dockerimage containing Adoptium OpenJDK 17 on [Debian 12](https://github.com/arthurpicht/docker-debian-12)

## Build image locally

    docker build -t arthurpicht/debian-12:latest https://github.com/arthurpicht/docker-debian-12.git2
    docker build -t arthurpicht/adoptopenjdk-17:latest https://github.com/arthurpicht/docker-adoptOpenJDK-17.git 

## Update History:

* 2023-09-28: jdk-17.0.8+1 from 29 August 2023, provided by [openjdk.net](https://adoptopenjdk.net/)

## References

* [adoptium releases](https://adoptium.net/de/temurin/releases/)