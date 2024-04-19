#!/bin/bash

if ! command -v _abs_path; then
    echo "TYPE_ERROR" >&2
    return 1
fi
