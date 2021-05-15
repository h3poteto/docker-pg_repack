FROM alpine:3.12

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
    wget http://api.pgxn.org/dist/pg_repack/1.4.6/pg_repack-1.4.6.zip && \
    unzip pg_repack-1.4.6.zip && \
    cd pg_repack-1.4.6 && \
    make && \
    make install
