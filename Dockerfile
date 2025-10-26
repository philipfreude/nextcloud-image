FROM nextcloud:32.0.1-apache

LABEL org.opencontainers.image.source="https://github.com/nextcloud/server"

RUN sed -i 's/MaxRequestWorkers.*/MaxRequestWorkers       500/' /etc/apache2/mods-enabled/mpm_prefork.conf

# Install necessary packages
RUN apt-get update && \
    apt-get install -y procps smbclient ffmpeg && \
    rm -rf /var/lib/apt/lists/*
