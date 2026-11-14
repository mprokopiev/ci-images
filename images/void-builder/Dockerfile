# hadolint ignore=DL3007
FROM ghcr.io/void-linux/void-glibc-full:latest
RUN xbps-install -Syu xbps \
    && xbps-install -Syu \
    && xbps-install -y base-devel git nodejs sops age bash openssl tzdata file binutils curl zstd
