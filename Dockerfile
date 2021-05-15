FROM debian:buster-slim

RUN set -ex && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    unzip \
    build-essential \
    wget \
    libpq-dev \
    postgresql-server-dev-11 \
    libssl-dev \
    zlib1g-dev && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN set -ex && \
    wget http://api.pgxn.org/dist/pg_repack/1.4.4/pg_repack-1.4.4.zip && \
    unzip pg_repack-1.4.4.zip && \
    cd pg_repack-1.4.4 && \
    make && \
    make install
