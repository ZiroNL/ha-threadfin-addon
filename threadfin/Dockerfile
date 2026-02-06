ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.0.0
FROM $BUILD_FROM

RUN apk add --no-cache \
    bash \
    curl \
    ffmpeg

RUN mkdir -p /opt/threadfin

RUN curl -L https://github.com/Threadfin/Threadfin/releases/latest/download/threadfin-linux-amd64.tar.gz \
    | tar -xz -C /opt/threadfin --strip-components=1

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]