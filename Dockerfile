FROM alpine:3.23

RUN set -ex && \
    apk add --no-cache \
    bash \
    unzip \
    make \
    postgresql-client \
    postgresql-dev \
    build-base \
    zlib-dev

RUN set -ex && \
    wget http://api.pgxn.org/dist/pg_repack/1.5.2/pg_repack-1.5.2.zip && \
    unzip pg_repack-1.5.2.zip && \
    cd pg_repack-1.5.2 && \
    make && \
    make install
