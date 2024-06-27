FROM nextcloud:29.0.3-apache

LABEL org.opencontainers.image.source="https://github.com/nextcloud/server"

# Install necessary packages
RUN apt-get update && \
    apt-get install -y procps smbclient ffmpeg && \
    rm -rf /var/lib/apt/lists/*
