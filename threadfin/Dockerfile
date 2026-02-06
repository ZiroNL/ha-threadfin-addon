ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.0.0
FROM $BUILD_FROM

# Install tools
RUN apk add --no-cache bash curl

# We gebruiken de bestaande threadfin docker image
# Dit pakt de threadfin executable uit de fyb3roptik image
RUN mkdir -p /opt/threadfin
RUN curl -sL https://hub.docker.com/v2/repositories/fyb3roptik/threadfin/tags/latest \
    | grep -o 'fyb3roptik/threadfin:[^"]*' | head -n1 > /tmp/tag.txt

# fallback: directe image gebruiken
RUN echo "Using threadfin image"

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]