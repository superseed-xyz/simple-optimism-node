#!/bin/sh
set -e
#initialisation required
#exec geth init --datadir="/home/ubuntu/op-data/geth/" --state.scheme="hash" /home/ubuntu/op-data/genesis.json \
exec geth \
  --datadir="/home/ubuntu/op-data/" \
  --http --http.port=8545 --http.addr=0.0.0.0 --http.vhosts=* --http.corsdomain=* \
  --ws --ws.port=8546 --ws.addr=0.0.0.0 --ws.origins=* \
  --authrpc.addr=0.0.0.0 \
  --authrpc.jwtsecret=/home/ubuntu/op-data/secret.jwt \
  --authrpc.vhosts=* \
  --authrpc.port=8551 \
  --verbosity=3 \
  --rollup.disabletxpoolgossip=false \
  --rpc.allow-unprotected-txs=true \
  --syncmode=full \
  --maxpeers=100 \
  --http.api=eth,net,web3,debug,txpool,engine,admin \
  --ws.api=eth,net,web3,debug,txpool \
  --metrics \
  --metrics.addr=0.0.0.0 \
  --metrics.port=6060 \
  --state.scheme=hash \
  --gcmode=full \
  --override.holocene=1736445601 \
  --override.granite=1726185601 \
  --rollup.halt=major
