FROM debian:stable

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update && apt-get install -y --no-install-recommends \
    openssh-client \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 --no-cache-dir install poetry
