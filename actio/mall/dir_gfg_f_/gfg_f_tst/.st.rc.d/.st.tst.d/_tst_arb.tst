#!/bin/bash

if ! command -v _tst_arb; then
    echo "TYPE_ERROR _tst_arb" >&2
    return 1
fi
