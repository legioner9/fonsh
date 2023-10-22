#!/bin/bash

file_name=${FONSH_PATH}/actio/mall/dir_gfg_f_/.d.ax/.mdeb/.cntl/_start_gfg_f_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/gfg_f_mdeb.sh
gfg_f_mdeb "$1"
#{body}
#{init_body}