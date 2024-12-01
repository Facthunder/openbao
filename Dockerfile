FROM ghcr.io/openbao/openbao:2.1

ENV KUBECTL_VERSION=1.30

USER root

RUN apk add --no-cache kubectl~${KUBECTL_VERSION} curl yq jq

USER openbao

LABEL maintainer="begarco"

WORKDIR /manifests
