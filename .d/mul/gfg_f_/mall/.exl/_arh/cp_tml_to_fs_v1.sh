#!/bin/bash 
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

ehh
${_wrp2_} mkdir -p --_xnd "${_dotd_dir_sal}"

ehh
${_wrp2_} cp -rf --_xxf "${tml_dir}/file.ax.sh" --_xnf "${_name_dir}/${name_fn_}.nsc.sh"

# ${_wrp2_} cp -rf --_xxd "${tml_dir}/.d" --_xnd "${PWD}/dir_${name_fn_}/.d"

ehh
${_wrp2_} cp -rf --_xxd "${tml_dir}/.d/.self_tst" --_xxd "${_dotd_dir}"

ehh
${_wrp2_} cp -rf --_xxd "${tml_dir}/.d/.cir" --_xxd "${_dotd_dir}"

ehh
${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.man" --_xnf "${_dotd_dir_sal}/${name_fn_}.man"

ehh
${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.lst" --_xnf "${_dotd_dir_sal}/${name_fn_}.lst"

ehh
${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.puml" --_xnf "${_dotd_dir_sal}/${name_fn_}.puml"

ehh
${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.body.sh" --_xnf "${_dotd_dir_sal}/${name_fn_}.body.nsc.sh"

ehh
${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.h.sh" --_xnf "${_dotd_dir_sal}/${name_fn_}.h.sh"

ehh
${_wrp2_} cp -rf --_xxd "${tml_dir}/_file/." --_xnd "${_dotd_dir}/.${name_fn_}"
