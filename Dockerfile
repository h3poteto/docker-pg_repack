FROM debian:12-slim

RUN set -ex && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    unzip \
    make \
    postgresql-client \
    postgresql-server-dev-all \
    build-essential \
    zlib1g-dev \
    libzstd-dev \
    liblz4-dev \
    libreadline-dev \
    wget \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN set -ex && \
    wget http://api.pgxn.org/dist/pg_repack/1.5.2/pg_repack-1.5.2.zip && \
    unzip pg_repack-1.5.2.zip && \
    cd pg_repack-1.5.2 && \
    make && \
    make install && \
    ln -s /usr/lib/postgresql/*/bin/pg_repack /usr/local/bin/pg_repack
