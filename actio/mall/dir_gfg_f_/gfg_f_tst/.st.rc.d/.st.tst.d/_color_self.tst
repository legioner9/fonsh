#!/bin/bash

if ! command -v _color_self; then
    echo "TYPE_ERROR" >&2
    return 1
fi
