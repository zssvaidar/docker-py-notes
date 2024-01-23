FROM debian:bullseye-slim

WORKDIR /var/app/website_first

RUN apt-get update && \
    apt-get install -y python3

COPY requirements.txt .
