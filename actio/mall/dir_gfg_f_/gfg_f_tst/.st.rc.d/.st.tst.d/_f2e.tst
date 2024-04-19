#!/bin/bash

if ! command -v _f2e; then
    echo "TYPE_ERROR" >&2
    return 1
fi

if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_f2e.tst.d/_f2e.tst.sh) == "true" ]]; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_f2e.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_f2e.tst.d/_f2e.tst.sh) == true' : return 1" >&2
    return 1
fi