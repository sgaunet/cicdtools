FROM alpine:3.18.2

ENV TRUFFLEHOG_VERSION="3.44.0"
ENV TRUFFLEHOG_OS="linux"
ENV TRUFFLEHOG_ARCH="amd64"

RUN apk add curl wget

# Install trufflehog
RUN wget -q https://github.com/trufflesecurity/trufflehog/releases/download/v${TRUFFLEHOG_VERSION}/trufflehog_${TRUFFLEHOG_VERSION}_${TRUFFLEHOG_OS}_${TRUFFLEHOG_ARCH}.tar.gz && \
    tar zxvf trufflehog_${TRUFFLEHOG_VERSION}_${TRUFFLEHOG_OS}_${TRUFFLEHOG_ARCH}.tar.gz trufflehog -C /usr/bin && \
    rm trufflehog_${TRUFFLEHOG_VERSION}_${TRUFFLEHOG_OS}_${TRUFFLEHOG_ARCH}.tar.gz && \
    chmod +x /usr/bin/trufflehog



