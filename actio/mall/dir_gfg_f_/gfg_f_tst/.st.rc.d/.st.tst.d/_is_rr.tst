#!/bin/bash

if ! command -v _is_rr; then
    echo "TYPE_ERROR : _is_rr" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_is_rr.tst.d/_is_rr.tst.sh) == "_is_rr" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_is_rr.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_is_rr.tst.d/_is_rr.tst.sh) == _is_rr' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_is_rr.tst.d/_is_rr.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_is_rr.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_is_rr.tst.d/_is_rr.tst.sh' : return 1" >&2
    return 1
fi
