# atlassian-plugin-sdk-container

[![Publish Docker Image](https://github.com/itdevsamurai/atlassian-plugin-sdk-container/actions/workflows/publish-docker-image.yml/badge.svg?branch=main)](https://github.com/itdevsamurai/atlassian-plugin-sdk-container/pkgs/container/atlassian-plugin-sdk-container)

Container image for Atlassian Plugin SDK

## Description

### Quick start

```shell
# Atlassian Plugin SDK with Node 24 & Yarn installed
docker pull ghcr.io/itdevsamurai/atlassian-plugin-sdk-container:node24
```
What's in the image:

* [Atlassian Plugin SDK](https://developer.atlassian.com/server/framework/atlassian-sdk/install-the-atlassian-sdk-on-a-linux-or-mac-system/)
* Eclipse Temurin (version depends on tag, see below)
* NodeJS with Yarn (version depends on tag, see below)

### Platforms

Only `linux/amd64` due to Atlassian Plugin SDK.

### Tags


**JDK 8**
- `latest`, `node22`, `jdk8-node22`
- `node18`, `jdk8-node18`
- `node20`, `jdk8-node20`
- `node24`, `jdk8-node24`

**JDK 21**
- `jdk21-node18`
- `jdk21-node20`
- `jdk21-node22`
- `jdk21-node24`

## Licensing

* Dockerfile and images is provided under MIT License.
* Atlassian Plugin SDK might be licensed and distributed under different terms.
* By using this docker image you automatically accept the License Terms of Atlassian SDK.

Please check for yourself before using.
