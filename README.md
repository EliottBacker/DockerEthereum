## Docker Ethereum

We keep a Docker image with recent snapshot builds on DockerHub.

Run this first:
```
docker pull eliottbacker/ethereum
```

To start a node that runs the JSON-RPC interface on port 8545, run:
```
docker run -p 8545:8545 -p 30303:30303 eliottbacker/ethereum
```

To use the interactive JavaScript console, run:
```
docker run -it --entrypoint="/usr/bin/geth" eliottbacker/ethereum console
```
