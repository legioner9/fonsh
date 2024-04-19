#!/bin/bash

if ! command -v _re; then
    echo "TYPE_ERROR _re" >&2
    return 1
fi
