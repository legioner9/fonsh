#!/bin/bash

_cr_dir_tst() {

    local item
    local fn_dir_path=${HOME}/.st.rc.d/.st.sh.d
    local lst_path=${HOME}/.st.rc.d/.st.stash.d/all_fn.lst
    local tst_root_dir=${HOME}/.st.rc.d/.st.tst.d
    local file_tst

    for item in $(ls ${fn_dir_path}); do

        item=$(basename ${item})
        item=${item%.*}
        file_tst=${tst_root_dir}/${item}.tst
        # echo ${item}
        # echo ${file_tst}

        if ! [[ -f ${file_tst} ]]; then
            echo '#!/bin/bash' >${file_tst}
            mkdir ${file_tst}.d
            echo '#!/bin/bash' >${file_tst}.d/${item}.tst.sh
        fi

    done

}

_cr_dir_tst
