FROM ghcr.io/hassio-addons/base:14.0.0

# Install dependencies
RUN apk add --no-cache bash curl

# Maak folder voor threadfin
RUN mkdir -p /opt/threadfin

# Kopieer de standalone binary
COPY threadfin /opt/threadfin/threadfin
RUN chmod +x /opt/threadfin/threadfin

# Kopieer run.sh
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]