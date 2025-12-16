ARG JDK_BASE=eclipse-temurin:8-jdk
FROM ${JDK_BASE}

ARG NODE_VERSION=22
ARG REFRESHED_AT
ENV REFRESHED_AT=${REFRESHED_AT}

ENV ATLAS_HOME=/opt/atlassian-plugin-sdk
ENV PATH="${ATLAS_HOME}/bin:${PATH}"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3015,DL3014,DL3008
RUN apt-get update \
 && apt-get install -y --no-install-recommends wget make tar \
 && mkdir -p ${ATLAS_HOME} \
 && wget -q https://marketplace.atlassian.com/download/plugins/atlassian-plugin-sdk-tgz \
    -O /tmp/atlas.tgz \
 && tar -xzf /tmp/atlas.tgz -C ${ATLAS_HOME} --strip-components=1 \
 && wget -O- -q https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
 && apt-get update \
 && apt-get install --no-install-recommends -y nodejs \
 && npm install -g yarn \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /app
CMD ["atlas-package"]
