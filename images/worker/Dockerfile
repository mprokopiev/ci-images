ARG BETTERLEAKS_VERSION=v1.10.1@sha256:f345c1ac502abc51ec334c3d815ad18a79fb1509555fc4496b2cb88e760681b3
ARG JUST_VERSION=1.59.0@sha256:014cbe6e6de678864004e2fd8b0405f77ce43b20b225e816feb330f2fb575c01
ARG FLYCTL_VERSION=v0.5.17@sha256:e9f4b7c27dfb6d275ca90f5fe2ae33aa8a3dc4b8b3b63668f1b835ed829cf64d
ARG STEP_CLI_VERSION=0.31.0@sha256:107e8497646c0e7c06cc5b6fd6fa13b5d2001909df6d7da3706b8541ed42bddf
FROM ghcr.io/betterleaks/betterleaks:${BETTERLEAKS_VERSION} AS betterleaks
FROM ghcr.io/casey/just:${JUST_VERSION} AS just
FROM ghcr.io/superfly/flyctl:${FLYCTL_VERSION} AS flyctl
FROM smallstep/step-cli:${STEP_CLI_VERSION} AS step-cli
FROM docker.io/alpine:3.24@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf
RUN apk upgrade --no-cache \
    && apk add --no-cache \
    curl bash make nodejs npm python3 age sops yamllint \
    docker-cli docker-cli-buildx docker-cli-compose jq yq-go \
    git openssh-client-default ca-certificates \
    tar xz zstd unzip \
    coreutils findutils grep sed procps-ng tzdata
ARG BETTERLEAKS_BINARY="/usr/bin/betterleaks"
COPY --from=betterleaks ${BETTERLEAKS_BINARY} ${BETTERLEAKS_BINARY}
ARG JUST_BINARY="/just"
COPY --from=just ${JUST_BINARY} /usr/local/bin/
ARG FLYCTL_BINARY="/flyctl"
COPY --from=flyctl ${FLYCTL_BINARY} /usr/local/bin/
ARG STEP_CLI_BINARY=/usr/local/bin/step
COPY --from=step-cli ${STEP_CLI_BINARY} /usr/local/bin
