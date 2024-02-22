#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="{dir_fns_}/dir_{name_fn_}/{name_fn_}.nsc.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

{name_fn_}() {

    local ratis=0

    #{def_const}

    #{ctrl_args}

    #{init_body}

}

{name_fn_}c_() {

    local ratis=1

    #{def_const}

    #{ctrl_args}

    #{init_body_c}

}

{name_fn_}g_() {

    local ratis=2

    #{def_const}

    #{ctrl_args}

    #{init_body_g}

}

# {name_fn_} @

unset filename
