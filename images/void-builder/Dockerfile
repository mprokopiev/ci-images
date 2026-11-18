# hadolint ignore=DL3007
FROM ghcr.io/void-linux/void-glibc-full:latest@sha256:e98f8cdde9e6ca85f8542fad5cdd06032a05dca3bf2b81757949bb24d67afa37
RUN xbps-install -Syu xbps \
    && xbps-install -Syu \
    && xbps-install -y base-devel git nodejs sops age bash openssl tzdata file binutils curl zstd
