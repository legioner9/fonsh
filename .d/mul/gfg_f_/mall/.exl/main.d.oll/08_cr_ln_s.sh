#!/bin/bash

#! ln -s ${PATH_SAL_AX_DIR}/${name_fn_}.ln  ${_dotd_dir_sal}/${name_fn_}.body.nsc.sh

"${_ehh}" mkdir ${PATH_SAL_AX_DIR}/${name_fn_}

tml_dir=${PLT_PATH}/.d/.mul/${_gig_f_}/${grad_}/${tail_}/.tml
echo -e "${GREEN}\$tml_dir = $tml_dir${NORMAL}" #print variable

#

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.sal
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_sh=${_dotd_dir_sal}/${name_fn_}.body.nsc.sh
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then

        "${_ehh}" rm -v ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/file.body.sh" "${fn_body_ln}"

        "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

else
    "${_ehh}" cp -rfv "${tml_dir}/file.body.sh" "${fn_body_ln}"

    "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_sh}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_sh}"
fi

#? file.local.list

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.local
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_list=${_dotd_dir_sal}/${name_fn_}.local.list
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then

        "${_ehh}" rm -v ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/file.local.list" "${fn_body_ln}"

        "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
  
else
    "${_ehh}" cp -rfv "${tml_dir}/file.local.list" "${fn_body_ln}"

    "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_list}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_list}"
fi


#? dir.h

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.d.h
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_list=${_dotd_dir_sal}/${name_fn_}.d.h
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -d "${fn_body_ln}" ]; then

        "${_ehh}" rm -rv ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/dir.h" "${fn_body_ln}"

        # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
  
else
    "${_ehh}" cp -rfv "${tml_dir}/dir.h" "${fn_body_ln}"

    # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_list}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_list}"
fi

#? empty.h

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.h
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_h=${_dotd_dir_sal}/${name_fn_}.h
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then

        "${_ehh}" rm -rv ${fn_body_ln}

        "${_ehh}" touch "${fn_body_ln}"

        # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
  
else
    "${_ehh}" touch "${fn_body_ln}"

    # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_h}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_h}"
fi

#? dir.h

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.d.repo
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_list=${_dotd_dir_sal}/${name_fn_}.d.repo
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -d "${fn_body_ln}" ]; then

        "${_ehh}" rm -rv ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/dir.repo" "${fn_body_ln}"

        # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
  
else
    "${_ehh}" cp -rfv "${tml_dir}/dir.repo" "${fn_body_ln}"

    # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_list}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_list}"
fi

fn_body_sh=${_dotd_dir_sal}/${name_fn_}.ifs

${_ehh} rm 