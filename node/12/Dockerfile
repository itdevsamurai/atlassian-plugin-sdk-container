FROM eclipse-temurin:8-jdk-focal

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3008,DL3014,DL3015,DL3016
RUN apt-get update \
    && apt-get install -y --no-install-recommends -y wget gnupg make \
    && wget -O- -q https://packages.atlassian.com/api/gpg/key/public \
    | gpg --dearmor | tee /usr/share/keyrings/atlas.gpg > /dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/atlas.gpg] https://packages.atlassian.com/debian/atlassian-sdk-deb/ stable contrib" >>/etc/apt/sources.list \
    && wget -O- -q https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get update \
    && apt-get install --no-install-recommends -y atlassian-plugin-sdk nodejs \
    && npm install -g yarn \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["atlas-package"]