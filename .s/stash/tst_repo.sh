#!/bin/bash

#. "$HOME/.bashrc"

filename=repo/.git/hooks/pre-commit

bsh_() {
    . $HOME/.bashrc
}

bsh_ 1>/dev/null

# echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

# git_pre_push_bck_hooks

# arr_dir_for_check_all_tst=()
# arr_dir_for_check_all_tst+=("$HOME"/start/communis/Deploy_store/.qa)                # protected "." dir for tst
# arr_dir_for_check_all_tst+=("$HOME"/start/communis/Deploy_store/.qa/lib/_stl_tmp_4) # protected "_" dir for tst
# arr_dir_for_check_all_tst+=("$HOME"/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib) # protected "_" dir for tst
# arr_dir_for_check_all_tst+=("$HOME"/start/communis/Deploy_store)

# check_all_tst_arr

# arr_dir_for_check_all_tst=()
# readarray -t arr_dir_for_check_all_tst <"$PATH_TST_FILE"

# build_fonsh_

list=${FONSH_PATH}/.d/.tst/local.list

if up_err_ tst ${list} 1>/dev/null; then
    echo -e "${BLUE}---INIT0 patch in ${list} with EXIT 0---${NORMAL}" #sistem info mesage
    # exit 0
    return 0
else
    echo -e "${RED}---INIT0 patch in ${list} with EXIT 1---${NORMAL}" #sistem info mesage
    # exit 1
    return 1
fi