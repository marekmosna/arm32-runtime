FROM arm32v7/alpine:3.14

LABEL maintainer="info@genesissoftware.eu"

# Install basic programs and custom glibc
RUN apk --no-cache add ca-certificates build-base wget make cmake \
	&& wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
	&& wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk \
	&& apk add glibc-2.29-r0.apk \
	&& rm glibc-2.29-r0.apk

ENTRYPOINT ["cmake --build $1 --target test"]