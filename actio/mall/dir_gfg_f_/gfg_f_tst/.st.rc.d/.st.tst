#!/bin/bash

_st_tst() {

    local item
    local fn_dir_path=${HOME}/.st.rc.d/.st.sh.d
    local lst_path=${HOME}/.st.rc.d/.st.stash.d/all_fn.lst
    local tst_root_dir=${HOME}/.st.rc.d/.st.tst.d
    local file_tst
    local fail_flag=0

    for item in $(ls ${fn_dir_path}); do

        : >${lst_path}
        echo ${item%.*} >>${lst_path}

    done

    for item in $(ls ${fn_dir_path}); do
        item=${item%.*}
        file_tst=${tst_root_dir}/${item}.tst
        # echo "\${file_tst}=${file_tst}"
        if [[ -f ${file_tst} ]]; then
            echo . ${file_tst}
            if ! . ${file_tst}; then
                echo "in fs=file://${HOME}/.st.rc.d/.st.tst , line=${LINENO}, _st_tst() :  FAIL_EXEC : '. file://${file_tst}' : fail_flag=1" >&2
                fail_flag=1
            fi
        else
            echo "in fs=file://${HOME}/.st.rc.d/.st.tst , line=${LINENO}, _st_tst() :  NOT_FILE : 'file://${file_tst}' : fail_flag=1" >&2
            fail_flag=1
        fi
    done

    if [[ ${fail_flag} -eq 1 ]]; then
        return 1
    fi

    return 0

}

if ! _st_tst; then
    return 1
fi
#
