#!/bin/bash

if ! command -v _elib; then
    echo "TYPE_ERROR" >&2
    return 1
fi
