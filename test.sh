#!/usr/bin/env bash
set -euo pipefail

IMAGE_JDK8_NODE22=atlas:test-jdk8-node22
IMAGE_JDK21_NODE24=atlas:test-jdk21-node24

echo "==> Build JDK 8 + Node 22"
docker build \
  --build-arg JDK_BASE=eclipse-temurin:8-jdk \
  --build-arg NODE_VERSION=22 \
  -t ${IMAGE_JDK8_NODE22} .

echo "==> Build JDK 21 + Node 24"
docker build \
  --build-arg JDK_BASE=eclipse-temurin:21-jdk \
  --build-arg NODE_VERSION=24 \
  -t ${IMAGE_JDK21_NODE24} .

echo "==> Verify JDK 8 + Node 22"
docker run --rm ${IMAGE_JDK8_NODE22} java -version
docker run --rm ${IMAGE_JDK8_NODE22} node -v
docker run --rm ${IMAGE_JDK8_NODE22} yarn -v
docker run --rm ${IMAGE_JDK8_NODE22} atlas-version

echo "==> Verify JDK 21 + Node 24"
docker run --rm ${IMAGE_JDK21_NODE24} java -version
docker run --rm ${IMAGE_JDK21_NODE24} node -v
docker run --rm ${IMAGE_JDK21_NODE24} yarn -v
docker run --rm ${IMAGE_JDK21_NODE24} atlas-version

echo "==> All checks passed"
