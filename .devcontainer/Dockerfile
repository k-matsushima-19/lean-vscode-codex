FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
       build-essential \
       curl \
       git \
       ca-certificates \
       zstd \
       nodejs \
       npm \
    && npm install -g @openai/codex \
    && rm -rf /var/lib/apt/lists/*

USER vscode

RUN mkdir -p /home/vscode/.codex

# Lean version manager: elan
RUN curl https://elan.lean-lang.org/elan-init.sh -sSf | \
    sh -s -- -y --default-toolchain none

ENV PATH="/home/vscode/.elan/bin:${PATH}"

WORKDIR /workspaces
