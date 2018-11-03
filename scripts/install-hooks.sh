#!/usr/bin/env bash

# the directory of the script. all locations are relative to the $DIR
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOOKS_DIR="$DIR/../.git/hooks"

mkdir -p "$HOOKS_DIR"
cp "$DIR/pre-commit" "$HOOKS_DIR"
