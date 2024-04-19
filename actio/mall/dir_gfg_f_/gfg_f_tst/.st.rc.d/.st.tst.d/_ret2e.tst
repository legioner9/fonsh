#!/bin/bash

if ! command -v _ret2e; then
    echo "TYPE_ERROR _ret2e" >&2
    return 1
fi
