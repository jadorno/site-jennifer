FROM mcr.microsoft.com/vscode/devcontainers/base:bookworm

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - \
    && apt install -y --no-install-recommends nodejs \
    && rm -rf /var/lib/apt/lists/*
