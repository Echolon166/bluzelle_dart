#!/usr/bin/env bash

# Define links which will be used to download files
BLUZELLE_LINK=https://raw.githubusercontent.com/bluzelle/curium/stargate/proto
COSMOSPROTO_LINK=https://raw.githubusercontent.com/cosmos/cosmos-sdk/master/third_party/proto/cosmos_proto
COSMOS_LINK=https://raw.githubusercontent.com/cosmos/cosmos-sdk/master/proto/cosmos
GOGOPROTO_LINK=https://raw.githubusercontent.com/cosmos/cosmos-sdk/master/third_party/proto/gogoproto
GOOGLEAPIS_LINK=https://raw.githubusercontent.com/googleapis/googleapis/master/google
PROTOBUF_LINK=https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google
TENDERMINT_LINK=https://raw.githubusercontent.com/tendermint/tendermint/master/proto/tendermint

# Define folder structure
PROTO_BLUZELLE_CRUD=$1/crud
PROTO_COSMOSPROTO=$1/cosmos_proto
PROTO_COSMOS_AUTH_V1BETA1=$1/cosmos/auth/v1beta1
PROTO_COSMOS_BANK_V1BETA1=$1/cosmos/bank/v1beta1
PROTO_COSMOS_BASE_QUERY_V1BETA1=$1/cosmos/base/query/v1beta1
PROTO_COSMOS_BASE_V1BETA1=$1/cosmos/base/v1beta1
PROTO_COSMOS_CRYPTO_MULTISIG_V1BETA1=$1/cosmos/crypto/multisig/v1beta1
PROTO_COSMOS_CRYPTO_SECP256K1=$1/cosmos/crypto/secp256k1
PROTO_COSMOS_TX_SIGNING_V1BETA1=$1/cosmos/tx/signing/v1beta1
PROTO_COSMOS_TX_V1BETA1=$1/cosmos/tx/v1beta1
PROTO_GOGOPROTO=$1/gogoproto
PROTO_GOOGLEAPIS=$1/google/api
PROTO_PROTOBUF=$1/google/protobuf
PROTO_TENDERMINT_ABCI=$1/tendermint/abci
PROTO_TENDERMINT_CRYPTO=$1/tendermint/crypto
PROTO_TENDERMINT_TYPES=$1/tendermint/types
PROTO_TENDERMINT_VERSION=$1/tendermint/version

# Create required folders
rm -r -f "$1"
mkdir -p "$1"

mkdir -p "$PROTO_BLUZELLE_CRUD"
mkdir -p "$PROTO_COSMOSPROTO"
mkdir -p "$PROTO_COSMOS_AUTH_V1BETA1"
mkdir -p "$PROTO_COSMOS_BANK_V1BETA1"
mkdir -p "$PROTO_COSMOS_BASE_QUERY_V1BETA1"
mkdir -p "$PROTO_COSMOS_BASE_V1BETA1"
mkdir -p "$PROTO_COSMOS_CRYPTO_MULTISIG_V1BETA1"
mkdir -p "$PROTO_COSMOS_CRYPTO_SECP256K1"
mkdir -p "$PROTO_COSMOS_TX_SIGNING_V1BETA1"
mkdir -p "$PROTO_COSMOS_TX_V1BETA1"
mkdir -p "$PROTO_GOGOPROTO"
mkdir -p "$PROTO_GOOGLEAPIS"
mkdir -p "$PROTO_PROTOBUF"
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
curl "$TENDERMINT_LINK/types/params.proto" > "$PROTO_TENDERMINT_TYPES/params.proto"
curl "$TENDERMINT_LINK/types/types.proto" > "$PROTO_TENDERMINT_TYPES/types.proto"
curl "$TENDERMINT_LINK/types/validator.proto" > "$PROTO_TENDERMINT_TYPES/validator.proto"
curl "$TENDERMINT_LINK/version/types.proto" > "$PROTO_TENDERMINT_VERSION/types.proto"

# Cosmos Protobuf files
curl "$COSMOS_LINK/auth/v1beta1/auth.proto" > "$PROTO_COSMOS_AUTH_V1BETA1/auth.proto"
curl "$COSMOS_LINK/auth/v1beta1/query.proto" > "$PROTO_COSMOS_AUTH_V1BETA1/query.proto"
curl "$COSMOS_LINK/bank/v1beta1/bank.proto" > "$PROTO_COSMOS_BANK_V1BETA1/bank.proto"
curl "$COSMOS_LINK/bank/v1beta1/query.proto" > "$PROTO_COSMOS_BANK_V1BETA1/query.proto"
curl "$COSMOS_LINK/bank/v1beta1/tx.proto" > "$PROTO_COSMOS_BANK_V1BETA1/tx.proto"
curl "$COSMOS_LINK/base/query/v1beta1/pagination.proto" > "$PROTO_COSMOS_BASE_QUERY_V1BETA1/pagination.proto"
curl "$COSMOS_LINK/base/v1beta1/coin.proto" > "$PROTO_COSMOS_BASE_V1BETA1/coin.proto"
curl "$COSMOS_LINK/crypto/multisig/v1beta1/multisig.proto" > "$PROTO_COSMOS_CRYPTO_MULTISIG_V1BETA1/multisig.proto"
curl "$COSMOS_LINK/crypto/secp256k1/keys.proto" > "$PROTO_COSMOS_CRYPTO_SECP256K1/keys.proto"
curl "$COSMOS_LINK/tx/signing/v1beta1/signing.proto" > "$PROTO_COSMOS_TX_SIGNING_V1BETA1/signing.proto"
curl "$COSMOS_LINK/tx/v1beta1/tx.proto" > "$PROTO_COSMOS_TX_V1BETA1/tx.proto"

## Third party Protobuf files which are required to compile main files
curl "$COSMOSPROTO_LINK/cosmos.proto" > "$PROTO_COSMOSPROTO/cosmos.proto"
curl "$GOGOPROTO_LINK/gogo.proto" > "$PROTO_GOGOPROTO/gogo.proto"
curl "$GOOGLEAPIS_LINK/api/annotations.proto" > "$PROTO_GOOGLEAPIS/annotations.proto"
curl "$GOOGLEAPIS_LINK/api/http.proto" > "$PROTO_GOOGLEAPIS/http.proto"
curl "$PROTOBUF_LINK/protobuf/any.proto" > "$PROTO_PROTOBUF/any.proto"
curl "$PROTOBUF_LINK/protobuf/descriptor.proto" > "$PROTO_PROTOBUF/descriptor.proto"
curl "$PROTOBUF_LINK/protobuf/duration.proto" > "$PROTO_PROTOBUF/duration.proto"
curl "$PROTOBUF_LINK/protobuf/timestamp.proto" > "$PROTO_PROTOBUF/timestamp.proto"