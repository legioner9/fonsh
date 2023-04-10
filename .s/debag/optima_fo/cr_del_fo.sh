#!/usr/bin/env bash
filename="${FONSH_PATH}/.s/debag/optima_fo/cr_del_fo.sh"
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
# cd "${idir}" || {
#     echo "${idir} not dir" >&2
#     return 1
# }

#?----------------------------------------------------
#?-------------------------------------

echo -e "
is_est_ ${idir}/check_dir_fo -d

wrp2_ rm --_cxd ${idir}/check_dir_fo/dir_fo_0_

f_f_arg_ --_name_fn fo_0_ --_dir_fns ${idir}/check_dir_fo --_flow 3

" > ${idir}/tmp.exl

exl_ --list ${idir}/tmp.exl
rm -v ${idir}/tmp.exl

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
# cd "$idir"
unset filename
unset PW
unset idir
