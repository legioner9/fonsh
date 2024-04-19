#!/bin/bash

if ! command -v _prs_f; then
    echo "TYPE_ERROR _prs_f" >&2
    return 1
fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst.d/_prs_f.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst.d/_prs_f.tst.sh' : return 1" >&2
    return 1
fi