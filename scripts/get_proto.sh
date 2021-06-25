#!/usr/bin/env bash

# Define links which will be used to download files
GOOGLEAPIS_LINK=https://raw.githubusercontent.com/googleapis/googleapis/master/google
PROTOBUF_LINK=https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google

# Define folder structure
PROTO_GOOGLEAPIS=$2/proto/google/api
PROTO_PROTOBUF=$2/proto/google/protobuf

# Create required folders
rm -r -f "$2"
mkdir -p "$2"

mkdir -p "$PROTO_GOOGLEAPIS"
mkdir -p "$PROTO_PROTOBUF"

# Download files
curl "$GOOGLEAPIS_LINK/api/annotations.proto" > "$PROTO_GOOGLEAPIS/annotations.proto"
curl "$GOOGLEAPIS_LINK/api/http.proto" > "$PROTO_GOOGLEAPIS/http.proto"
curl "$PROTOBUF_LINK/protobuf/descriptor.proto" > "$PROTO_PROTOBUF/descriptor.proto"