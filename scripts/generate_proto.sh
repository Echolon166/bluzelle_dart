#!/usr/bin/env bash

# Define variables
OUT=lib/proto
PROTO=proto
THIRD_PARTY=third_party

# Get the missing Protobuf types files
sh ./scripts/get_proto.sh "$PROTO" "$THIRD_PARTY"

# Create required folders
rm -r -f "$OUT"
mkdir -p "$OUT"

# Generate the Protobuf implementation
PROTOC="protoc --dart_out=$OUT -I$THIRD_PARTY/proto"
proto_dirs=$(find "$PROTO" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC -I$PROTO \
  $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Remove all .pbserver.dart files as they are unnecessary
find "$OUT" -name "*.pbserver.dart" -type f -delete

# Delete unnecessary folders
rm -rf "$THIRD_PARTY"