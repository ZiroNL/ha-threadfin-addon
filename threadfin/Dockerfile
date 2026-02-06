# Stage 1: pak de threadfin binary van de officiële Docker image
FROM fyb3roptik/threadfin:latest as threadfin_build

# Stage 2: HA base image
ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.0.0
FROM $BUILD_FROM

# Install bash voor run.sh
RUN apk add --no-cache bash

# Maak folder voor threadfin
RUN mkdir -p /opt/threadfin

# Kopieer de binary en config
COPY --from=threadfin_build /home/threadfin /opt/threadfin

# Kopieer run script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Start Threadfin
CMD [ "/run.sh" ]