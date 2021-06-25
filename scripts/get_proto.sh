#!/usr/bin/env bash

# Define links which will be used to download files
BLUZELLE_LINK=https://raw.githubusercontent.com/bluzelle/curium/stargate/proto
GOOGLEAPIS_LINK=https://raw.githubusercontent.com/googleapis/googleapis/master/google
PROTOBUF_LINK=https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google

# Define folder structure
PROTO_BLUZELLE_CRUD=$1/crud
PROTO_GOOGLEAPIS=$2/proto/google/api
PROTO_PROTOBUF=$2/proto/google/protobuf

# Create required folders
rm -r -f "$1"
mkdir -p "$1"

rm -r -f "$2"
mkdir -p "$2"

mkdir -p "$PROTO_BLUZELLE_CRUD"
mkdir -p "$PROTO_GOOGLEAPIS"
mkdir -p "$PROTO_PROTOBUF"

# Download files
## Main Protobuf files
curl "$BLUZELLE_LINK/crud/CrudValue.proto" > "$PROTO_BLUZELLE_CRUD/CrudValue.proto"
curl "$BLUZELLE_LINK/crud/KeyValue.proto" > "$PROTO_BLUZELLE_CRUD/KeyValue.proto"
curl "$BLUZELLE_LINK/crud/Paging.proto" > "$PROTO_BLUZELLE_CRUD/Paging.proto"
curl "$BLUZELLE_LINK/crud/genesis.proto" > "$PROTO_BLUZELLE_CRUD/genesis.proto"
curl "$BLUZELLE_LINK/crud/lease.proto" > "$PROTO_BLUZELLE_CRUD/lease.proto"
curl "$BLUZELLE_LINK/crud/query.proto" > "$PROTO_BLUZELLE_CRUD/query.proto"
curl "$BLUZELLE_LINK/crud/tx.proto" > "$PROTO_BLUZELLE_CRUD/tx.proto"

## Third party Protobuf files which are required to compile main files
curl "$GOOGLEAPIS_LINK/api/annotations.proto" > "$PROTO_GOOGLEAPIS/annotations.proto"
curl "$GOOGLEAPIS_LINK/api/http.proto" > "$PROTO_GOOGLEAPIS/http.proto"
curl "$PROTOBUF_LINK/protobuf/descriptor.proto" > "$PROTO_PROTOBUF/descriptor.proto"