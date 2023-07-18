FROM alpine:3.18.2

ENV TRUFFLEHOG_VERSION="3.44.0"
ENV TRUFFLEHOG_OS="linux"
ENV TRUFFLEHOG_ARCH="amd64"

ENV ENVTEMPLATE_VERSION="0.2.0"
ENV ENVTEMPLATE_OS="linux"
ENV ENVTEMPLATE_ARCH="amd64"

ENV GITLEAKS_VERSION="8.17.0"
ENV GITLEAKS_OS="linux"
ENV GITLEAKS_ARCH="x64"


RUN apk add curl wget

# Install trufflehog
RUN wget -q https://github.com/trufflesecurity/trufflehog/releases/download/v${TRUFFLEHOG_VERSION}/trufflehog_${TRUFFLEHOG_VERSION}_${TRUFFLEHOG_OS}_${TRUFFLEHOG_ARCH}.tar.gz && \
    tar zxvf trufflehog_${TRUFFLEHOG_VERSION}_${TRUFFLEHOG_OS}_${TRUFFLEHOG_ARCH}.tar.gz trufflehog -C /usr/bin && \
    rm trufflehog_${TRUFFLEHOG_VERSION}_${TRUFFLEHOG_OS}_${TRUFFLEHOG_ARCH}.tar.gz && \
    chmod +x /usr/bin/trufflehog


# Install envtemplate
RUN wget -q https://github.com/sgaunet/envtemplate/releases/download/v${ENVTEMPLATE_VERSION}/envtemplate_${ENVTEMPLATE_VERSION}_${ENVTEMPLATE_OS}_${ENVTEMPLATE_ARCH} && \
        mv envtemplate_${ENVTEMPLATE_VERSION}_${ENVTEMPLATE_OS}_${ENVTEMPLATE_ARCH} /usr/bin/envtemplate && \
        chmod +x /usr/bin/envtemplate

# Install gitleaks
RUN wget -q https://github.com/zricethezav/gitleaks/releases/download/v${GITLEAKS_VERSION}/gitleaks_${GITLEAKS_VERSION}_${GITLEAKS_OS}_${GITLEAKS_ARCH}.tar.gz && \
        tar zxvf gitleaks_${GITLEAKS_VERSION}_${GITLEAKS_OS}_${GITLEAKS_ARCH}.tar.gz gitleaks && \
        rm gitleaks_${GITLEAKS_VERSION}_${GITLEAKS_OS}_${GITLEAKS_ARCH}.tar.gz && \
        mv gitleaks /usr/bin/gitleaks && \
        chmod +x /usr/bin/gitleaks
