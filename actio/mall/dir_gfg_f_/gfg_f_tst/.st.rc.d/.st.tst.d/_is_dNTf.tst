#!/bin/bash

if ! command -v _is_dNTf; then
    echo "TYPE_ERROR : _is_dNTf" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh) == "_is_dNTf" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_is_dNTf.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh) == _is_dNTf' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_is_dNTf.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_is_dNTf.tst.d/_is_dNTf.tst.sh' : return 1" >&2
    return 1
fi
