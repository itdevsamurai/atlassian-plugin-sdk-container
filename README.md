# atlassian-plugin-sdk-container
Container image for Atlassian Plugin SDK

## Description

### What's included

Base image and all tags will have the following:

* Based on [eclipse-temurin:8-jdk](https://hub.docker.com/_/eclipse-temurin)
    * Latest Ubuntu LTS
    * Latest Eclipse Temurin 8 JDK (for Atlassian Plugin SDK)
* [Atlassian Plugin SDK](https://developer.atlassian.com/server/framework/atlassian-sdk/install-the-atlassian-sdk-on-a-linux-or-mac-system/)
* `gnupg` package

### Platforms

Only `linux/amd64` due to Atlassian Plugin SDK.

### Tags:

* `latest`: this is a minimal image, only Temurin 8 JDK & Atlassian Plugin SDK
* `node16`: minimal image with Node 16, Yarn installed.
* `node14`: minimal image with Node 14, Yarn installed.


## Development

```shell
docker run --platform=linux/amd64 \
    -v /Users/trung/work/confluence-team-decision-server:/app/ \
    --rm -it ghcr.io/itdevsamurai/atlassian-plugin-sdk-container bash
```

```shell
docker buildx build --platform=linux/amd64 \
    --rm -t ghcr.io/itdevsamurai/atlassian-plugin-sdk-container . --load
```
## Licensing

* Dockerfile and images is provided under MIT License.
* Atlassian Plugin SDK might be licensed and distributed under different terms.
* By using this docker image you automatically accept the License Terms of Atlassian SDK.

Please check for yourself before using.