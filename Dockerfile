FROM arm32v7/alpine:3.14

LABEL maintainer="info@genesissoftware.eu"

# Install basic programs and custom glibc
RUN apk --no-cache add ca-certificates build-base wget make cmake

WORKDIR /app

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
