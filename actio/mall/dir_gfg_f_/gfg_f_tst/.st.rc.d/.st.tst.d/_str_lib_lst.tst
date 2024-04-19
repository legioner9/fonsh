#!/bin/bash

if ! command -v _str_lib_lst; then
    echo "TYPE_ERROR _str_lib_lst" >&2
    return 1
fi
