# atlassian-plugin-sdk-container

[![Publish Docker Image](https://github.com/itdevsamurai/atlassian-plugin-sdk-container/actions/workflows/publish-docker-image.yml/badge.svg?branch=main)](https://github.com/itdevsamurai/atlassian-plugin-sdk-container/pkgs/container/atlassian-plugin-sdk-container)

Container image for Atlassian Plugin SDK
## Description

### Quick start

```shell
# Atlassian Plugin SDK with Node 16 & Yarn installed
docker pull ghcr.io/itdevsamurai/atlassian-plugin-sdk-container:node16
```

### Platforms

Only `linux/amd64` due to Atlassian Plugin SDK.

### Tags:

* `latest`: this is a minimal image, only Temurin 8 JDK & Atlassian Plugin SDK
    * Based on [eclipse-temurin:8-jdk](https://hub.docker.com/_/eclipse-temurin) (latest Ubuntu LTS)
    * [Atlassian Plugin SDK](https://developer.atlassian.com/server/framework/atlassian-sdk/install-the-atlassian-sdk-on-a-linux-or-mac-system/)
    * `gnupg`
    * `make`: for building scripts
* `node16`: what `latest` has, with Node 16 & Yarn installed.
* `node14`: what `latest` has, with Node 14 & Yarn installed.
* `node12`: what `latest` has, with Node 12 & Yarn installed.

## Licensing

* Dockerfile and images is provided under MIT License.
* Atlassian Plugin SDK might be licensed and distributed under different terms.
* By using this docker image you automatically accept the License Terms of Atlassian SDK.

Please check for yourself before using.