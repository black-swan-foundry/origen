# Simple usage with a mounted data directory:
# > docker build -t BlackSwanFoundry/origen .
# > docker run -it -p 26657:26657 -p 26656:26656 -v ~/.origen-chaind:/origen-chain/.origen-chain -v ~/.origenchaincli:/origen-chain/.origenchaincli BlackSwanFoundry/origen origen-chaind init [moniker] [flags]
# > docker run -it -p 26657:26657 -p 26656:26656 -v ~/.origen-chaind:/origen-chain/.origen-chaind -v ~/.origenchaincli:/origen-chain/.origenchaincli BlackSwanFoundry/origen origen-chaind start

# Final image
FROM golang:alpine

MAINTAINER maintainers@blackswanfoundry.com

ENV PACKAGES curl git libc-dev bash gcc linux-headers eudev-dev

RUN apk add --no-cache $PACKAGES

RUN curl https://get.starport.network/starport! | bash

ENV CHAIN_MAIN /origen-chain

# Install ca-certificates
RUN apk add --update ca-certificates

WORKDIR $CHAIN_MAIN

RUN curl https://get.starport.com/BlackSwanFoundry/origen@latest! | bash

# Run origen-chaind by default, omit entrypoint to ease using container with origenchaincli
CMD ["origen-chaind"]