FROM alpine:3.10

RUN set -ex && \
    apk add --no-cache \
    bash \
    unzip \
    make \
    postgresql-client \
    postgresql-dev \
    build-base \
    zlib-dev && \
    wget http://api.pgxn.org/dist/pg_repack/1.4.4/pg_repack-1.4.4.zip && \
    unzip pg_repack-1.4.4.zip && \
    cd pg_repack-1.4.4 && \
    make && \
    make install
