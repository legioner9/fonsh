#!/usr/bin/env bash
filename="${FONSH_PATH}/.s/debag/optima_fo/cr_del_fo.sh"
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

wrp2_ f_f_arg_ --_name_fn fo_ --_dir_fns ${idir}/check_dir_fo --_flow 3
errno=$?
if [ ${errno} -ne 0 ]; then
    plt_exit "be return ${errno} <- Fail: ${FNN} in ${FNLOCK}"
    return ${errno}
fi

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
# cd "$idir"
unset filename
unset PW
unset idir
