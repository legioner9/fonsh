#!/bin/bash

if ! command -v _edit; then
    echo "TYPE_ERROR" >&2
    return 1
fi
