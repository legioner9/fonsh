#!/bin/bash

#. "${HOME}/.bashrc"

filename="${FONSH_PATH}/actio/mall/dir_gfg_f_/_gnr_dir_sys.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd  "$(prs_f -d $filename)" -d1
g_args=($(garg2e_ "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(garg2e_ "${ARGS[@]}"); do
[[ 1 -eq ${verbose} ]] || echo "local $strex"
eval $strex
done
_(){
echo "empty _deb in $filename"
# . $filename" arg1 arg2
}
if [ "_deb" == "$1" ]; then
_
return 0
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
#? cr_tst_sys_ --name_dir extst_1 --ext extst"
[ -z "$1" ] && {
plt_exit "$1 empty first arg mast be name dir (like namefn_extst_num) in ${rdir}"
return 1
}
#
plt_pause "do that? create $1 (like namefn_extst_num) cr_tst_sys_ in ${rdir}"
#
${_ehh} rm ${rdir}/${gname}.tmp.exl
#
echo -e "
${_ehh} cd ${rdir}
#
${_ehh} mkdir ${rdir}/"$1"_extst
#
${_ehh} cd ${rdir}/"$1"_extst
#
${_ehh} cr_tst_sys_ --name_dir extst_1 --ext extst" > ${rdir}/${gname}.tmp.exl
#
${_ehh}  ${_exl_} --_exl_list ${rdir}/${gname}.tmp.exl
#
${_ehh} rm ${rdir}/${gname}.tmp.exl
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
