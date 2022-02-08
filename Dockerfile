# Simple usage with a mounted data directory:
# > docker build -t BlackSwanFoundry/origen .
# > docker run -it -p 26657:26657 -p 26656:26656 -v ~/.origen-chaind:/origen-chain/.origen-chain -v ~/.origenchaincli:/origen-chain/.origenchaincli BlackSwanFoundry/origen origen-chaind init [moniker] [flags]
# > docker run -it -p 26657:26657 -p 26656:26656 -v ~/.origen-chaind:/origen-chain/.origen-chaind -v ~/.origenchaincli:/origen-chain/.origenchaincli BlackSwanFoundry/origen origen-chaind start

# Final image
FROM starport/cli

MAINTAINER maintainers@blackswanfoundry.com

USER tendermint
COPY . /apps

ENTRYPOINT ["starport"]