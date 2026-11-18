ARG BETTERLEAKS_VERSION=v1.10.1@sha256:f345c1ac502abc51ec334c3d815ad18a79fb1509555fc4496b2cb88e760681b3
ARG JUST_VERSION=1.59.0@sha256:014cbe6e6de678864004e2fd8b0405f77ce43b20b225e816feb330f2fb575c01
FROM ghcr.io/betterleaks/betterleaks:${BETTERLEAKS_VERSION} AS betterleaks
FROM ghcr.io/casey/just:${JUST_VERSION} AS just
FROM docker.io/alpine:3.24@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf
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
