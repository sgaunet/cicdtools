FROM alpine:3.18.2 as downloader
RUN \
    apk add curl wget && \
    wget -q https://github.com/trufflesecurity/trufflehog/releases/download/v3.21.0/trufflehog_3.21.0_linux_amd64.tar.gz && \
    tar zxvf trufflehog_3.21.0_linux_amd64.tar.gz trufflehog -C /usr/bin && \
    chmod +x /usr/bin/trufflehog


