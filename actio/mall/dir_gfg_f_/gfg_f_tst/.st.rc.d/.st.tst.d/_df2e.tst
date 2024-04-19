#!/bin/bash

if ! command -v _df2e; then
    echo "TYPE_ERROR" >&2
    return 1
fi
