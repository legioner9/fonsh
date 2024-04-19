#!/bin/bash

if ! command -v _c_up; then
    echo "TYPE_ERROR" >&2
    return 1
fi
