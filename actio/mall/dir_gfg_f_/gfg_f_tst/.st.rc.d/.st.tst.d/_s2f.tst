#!/bin/bash

if ! command -v _s2f; then
    echo "TYPE_ERROR _s2f" >&2
    return 1
fi

# cd ~/.st.rc.d/.st.tst.d || echo "cd ~/.st.rc.d/.st.tst.d EXEC_FALI" >&2

if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_s2f.tst.d/_s2f.tst.sh) == "_two" ]]; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_s2f.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_s2f.tst.d/_s2f.tst.sh) == two' : return 1" >&2
    return 1
fi
