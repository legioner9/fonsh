#!/bin/bash

if ! command -v _dd2e; then
    echo "TYPE_ERROR" >&2
    return 1
fi
