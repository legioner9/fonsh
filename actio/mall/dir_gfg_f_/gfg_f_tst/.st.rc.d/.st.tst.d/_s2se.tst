#!/bin/bash

if ! command -v _s2se; then
    echo "TYPE_ERROR _s2se" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_s2se.tst.d/_s2se.tst.sh) == "_s2se" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_s2se.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_s2se.tst.d/_s2se.tst.sh) == _s2se' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_s2se.tst.d/_s2se.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_s2se.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_s2se.tst.d/_s2se.tst.sh' : return 1" >&2
    return 1
fi
