#!/bin/bash

if ! command -v _arb_up; then
    echo "TYPE_ERROR" >&2
    return 1
fi
