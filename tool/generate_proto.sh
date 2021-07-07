#!/usr/bin/env bash

# Define variables
OUT=lib/src/codec
PROTO=proto

# Get the missing Protobuf types files
sh ./tool/get_proto.sh "$PROTO"

# Create required folders
rm -r -f "$OUT"
mkdir -p "$OUT"

# Generate the Protobuf implementation
PROTOC="protoc --dart_out=$OUT -I$PROTO"
proto_dirs=$(find "$PROTO" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC -I$PROTO \
  $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Remove all .pbserver.dart files as they are unnecessary
find "$OUT" -name "*.pbserver.dart" -type f -delete

# Delete no longer required Protobuf folders
# rm -rf "$PROTO"

# Generate exports
sh ./tool/generate_exports.sh "$OUT"