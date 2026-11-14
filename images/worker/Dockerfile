ARG BETTERLEAKS_VERSION=v1.10.1
FROM ghcr.io/betterleaks/betterleaks:${BETTERLEAKS_VERSION} AS betterleaks
FROM alpine:3.24
RUN apk upgrade --no-cache \
    && apk add --no-cache \
    curl bash make just nodejs npm python3 age sops step-cli yamllint \
    docker-cli docker-cli-buildx docker-cli-compose jq yq-go \
    git openssh-client-default ca-certificates \
    tar xz zstd unzip \
    coreutils findutils grep sed procps-ng tzdata
ARG BETTERLEAKS_BINARY=/usr/bin/betterleaks
COPY --from=betterleaks ${BETTERLEAKS_BINARY} ${BETTERLEAKS_BINARY}
