FROM nextcloud:29.0.1-apache

# Install necessary packages
RUN apt-get update && \
    apt-get install -y procps smbclient ffmpeg && \
    rm -rf /var/lib/apt/lists/*
