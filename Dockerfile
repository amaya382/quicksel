FROM maven:3.6.3-adoptopenjdk-8

RUN set -eux \
 && apt update \
 && apt install -y --no-install-recommends \
      make libgfortran3 \
 && apt clean \
 && rm -r /var/lib/apt/lists/*
