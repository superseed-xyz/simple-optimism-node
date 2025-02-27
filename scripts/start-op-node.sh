#!/bin/sh
set -e

# Start op-node.
exec op-node \
    --l1=https://eth-mainnet.g.alchemy.com/v2/c_SSQG9dR0LUqhWHMzdDVAiaXaI0XIDk \
    --l2=ws://op-geth:8551 \
    --rpc.addr=0.0.0.0 \
    --rpc.port=9545 \
    --l2.jwt-secret=/home/ubuntu/op-data/secret.jwt \
    --metrics.enabled \
    --rollup.load-protocol-versions=true \
    --rollup.config /home/ubuntu/op-data/rollup.json \
    --override.holocene=1736445601 \
    --override.granite=1726185601 \
    --l1.beacon=http://prysm:3500 \
    --p2p.bootnodes=enode://3e905f39a5c084367bbe172453cf6d81b28a49f57064b56b0eb76af75d6eafe3d578605f56c4353328194245453083e1c26e339497f732461d2187d0c4a4474e@35.203.166.40:9222?discport=30301,enode://d25ce99435982b04d60c4b41ba256b84b888626db7bee45a9419382300fbe907359ae5ef250346785bff8d3b9d07cd3e017a27e2ee3cfda3bcbb0ba762ac9674@bootnode.conduit.xyz:0?discport=30301,enode://2d4e7e9d48f4dd4efe9342706dd1b0024681bd4c3300d021f86fc75eab7865d4e0cbec6fbc883f011cfd6a57423e7e2f6e104baad2b744c3cafaec6bc7dc92c1@34.65.43.171:0?discport=30305,enode://9d7a3efefe442351217e73b3a593bcb8efffb55b4807699972145324eab5e6b382152f8d24f6301baebbfb5ecd4127bd3faab2842c04cd432bdf50ba092f6645@34.65.109.126:0?discport=30305 \
    --p2p.static=/ip4/35.203.166.40/tcp/9222/p2p/16Uiu2HAkydtwWKfTJVk91zmc4JnBzathYyqLSDtw3RCFW1mwkPMk
