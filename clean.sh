#!/bin/bash
# This script safely tears down the docker-compose stack.
docker compose down -v
# This removes the data stored on the host machine.
rm -Rf ./consensus/beacondata ./consensus/validatordata ./consensus/genesis.ssz
rm -Rf ./execution/geth
echo "Cleanup complete."