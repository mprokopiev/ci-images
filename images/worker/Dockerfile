ARG BETTERLEAKS_VERSION=v1.10.1
ARG JUST_VERSION=1.59.0
FROM ghcr.io/betterleaks/betterleaks:${BETTERLEAKS_VERSION} AS betterleaks
FROM ghcr.io/casey/just:${JUST_VERSION} AS just
FROM docker.io/alpine:3.24
RUN apk upgrade --no-cache \
    && apk add --no-cache \
    curl bash make nodejs npm python3 age sops step-cli yamllint \
    docker-cli docker-cli-buildx docker-cli-compose jq yq-go \
    git openssh-client-default ca-certificates \
    tar xz zstd unzip \
    coreutils findutils grep sed procps-ng tzdata
ARG BETTERLEAKS_BINARY=/usr/bin/betterleaks
COPY --from=betterleaks ${BETTERLEAKS_BINARY} ${BETTERLEAKS_BINARY}
ARG JUST_BINARY=/just
COPY --from=just ${JUST_BINARY} /usr/local/bin/
