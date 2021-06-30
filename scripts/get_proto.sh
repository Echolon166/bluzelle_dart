#!/usr/bin/env bash

# Define links which will be used to download files
BLUZELLE_LINK=https://raw.githubusercontent.com/bluzelle/curium/stargate/proto
GOOGLEAPIS_LINK=https://raw.githubusercontent.com/googleapis/googleapis/master/google
PROTOBUF_LINK=https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google
GOGOPROTO_LINK=https://raw.githubusercontent.com/gogo/protobuf/master/gogoproto
TENDERMINT_LINK=https://raw.githubusercontent.com/tendermint/tendermint/master/proto/tendermint

# Define folder structure
PROTO_BLUZELLE_CRUD=$1/crud
PROTO_GOOGLEAPIS=$1/google/api
PROTO_PROTOBUF=$1/google/protobuf
PROTO_GOGOPROTO=$1/gogoproto
PROTO_TENDERMINT_ABCI=$1/tendermint/abci
PROTO_TENDERMINT_CRYPTO=$1/tendermint/crypto
PROTO_TENDERMINT_TYPES=$1/tendermint/types
PROTO_TENDERMINT_VERSION=$1/tendermint/version

# Create required folders
rm -r -f "$1"
mkdir -p "$1"

mkdir -p "$PROTO_BLUZELLE_CRUD"
mkdir -p "$PROTO_GOOGLEAPIS"
mkdir -p "$PROTO_PROTOBUF"
mkdir -p "$PROTO_GOGOPROTO"
mkdir -p "$PROTO_TENDERMINT_ABCI"
mkdir -p "$PROTO_TENDERMINT_CRYPTO"
mkdir -p "$PROTO_TENDERMINT_TYPES"
mkdir -p "$PROTO_TENDERMINT_VERSION"

# Download files
## Bluzelle DB Protobuf files
curl "$BLUZELLE_LINK/crud/CrudValue.proto" > "$PROTO_BLUZELLE_CRUD/CrudValue.proto"
curl "$BLUZELLE_LINK/crud/KeyValue.proto" > "$PROTO_BLUZELLE_CRUD/KeyValue.proto"
curl "$BLUZELLE_LINK/crud/Paging.proto" > "$PROTO_BLUZELLE_CRUD/Paging.proto"
curl "$BLUZELLE_LINK/crud/genesis.proto" > "$PROTO_BLUZELLE_CRUD/genesis.proto"
curl "$BLUZELLE_LINK/crud/lease.proto" > "$PROTO_BLUZELLE_CRUD/lease.proto"
curl "$BLUZELLE_LINK/crud/query.proto" > "$PROTO_BLUZELLE_CRUD/query.proto"
curl "$BLUZELLE_LINK/crud/tx.proto" > "$PROTO_BLUZELLE_CRUD/tx.proto"

# Tendermint Protobuf Files
curl "$TENDERMINT_LINK/abci/types.proto" > "$PROTO_TENDERMINT_ABCI/types.proto"
curl "$TENDERMINT_LINK/crypto/keys.proto" > "$PROTO_TENDERMINT_CRYPTO/keys.proto"
curl "$TENDERMINT_LINK/crypto/proof.proto" > "$PROTO_TENDERMINT_CRYPTO/proof.proto"
curl "$TENDERMINT_LINK/types/types.proto" > "$PROTO_TENDERMINT_TYPES/types.proto"
curl "$TENDERMINT_LINK/types/params.proto" > "$PROTO_TENDERMINT_TYPES/params.proto"
curl "$TENDERMINT_LINK/types/validator.proto" > "$PROTO_TENDERMINT_TYPES/validator.proto"
curl "$TENDERMINT_LINK/version/types.proto" > "$PROTO_TENDERMINT_VERSION/types.proto"

## Third party Protobuf files which are required to compile main files
curl "$GOOGLEAPIS_LINK/api/annotations.proto" > "$PROTO_GOOGLEAPIS/annotations.proto"
curl "$GOOGLEAPIS_LINK/api/http.proto" > "$PROTO_GOOGLEAPIS/http.proto"
curl "$PROTOBUF_LINK/protobuf/descriptor.proto" > "$PROTO_PROTOBUF/descriptor.proto"
curl "$PROTOBUF_LINK/protobuf/timestamp.proto" > "$PROTO_PROTOBUF/timestamp.proto"
curl "$PROTOBUF_LINK/protobuf/duration.proto" > "$PROTO_PROTOBUF/duration.proto"
curl "$GOGOPROTO_LINK/gogo.proto" > "$PROTO_GOGOPROTO/gogo.proto"