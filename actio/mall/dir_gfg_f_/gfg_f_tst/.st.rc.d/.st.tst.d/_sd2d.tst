#!/bin/bash

if ! command -v _sd2d; then
    echo "TYPE_ERROR _s2se" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh) == "_sd2d" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh) == _sd2d' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh' : return 1" >&2
    return 1
fi
