FROM nextcloud:31.0.0-apache

LABEL org.opencontainers.image.source="https://github.com/nextcloud/server"

# Install necessary packages
RUN apt-get update && \
    apt-get install -y procps smbclient ffmpeg && \
    rm -rf /var/lib/apt/lists/*
