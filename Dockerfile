FROM alpine:3.17

ARG TARGETOS
ARG TARGETARCH

LABEL maintainer="Bo-Yi Wu <appleboy.tw@gmail.com>" \
  org.label-schema.name="CodeGPT" \
  org.label-schema.vendor="Bo-Yi Wu" \
  org.label-schema.schema-version="1.0"

LABEL org.opencontainers.image.source=https://github.com/appleboy/CodeGPT
LABEL org.opencontainers.image.description="A CLI written in Go language that writes git commit messages or do a code review brief for you using ChatGPT AI."
LABEL org.opencontainers.image.licenses=MIT

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache ca-certificates=20220614-r4 git=2.38.4-r1 curl && \
  rm -rf /var/cache/apk/* && \
    LATESTVER=$(curl --silent "https://api.github.com/repos/appleboy/CodeGPT/releases/latest" | \
    grep '"tag_name":' |                                            \
    sed -E 's/.*"([^"]+)".*/\1/') && \
    ASSETVER=${LATESTVER//v} && \
    wget https://github.com/appleboy/CodeGPT/releases/download/$LATESTVER/CodeGPT-$ASSETVER-linux-amd64 && \
    mv CodeGPT-$ASSETVER-linux-amd64 /bin/codegpt && \
    chmod +x /bin/codegpt ./entrypoint.sh


ENTRYPOINT ["./entrypoint.sh"]
