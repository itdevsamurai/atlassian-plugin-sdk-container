FROM eclipse-temurin:8-jdk

ARG REFRESHED_AT
ENV REFRESHED_AT=$REFRESHED_AT

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3015,DL3014,DL3008
RUN apt-get update \
    && apt-get install -y --no-install-recommends -y wget gnupg make \
    && wget -O- -q https://packages.atlassian.com/api/gpg/key/public \
    | gpg --dearmor | tee /usr/share/keyrings/atlas.gpg > /dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/atlas.gpg] https://packages.atlassian.com/debian/atlassian-sdk-deb/ stable contrib" >>/etc/apt/sources.list \
    &&  apt-get update \
    &&  apt-get install --no-install-recommends -y atlassian-plugin-sdk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["atlas-package"]
