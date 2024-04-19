#!/bin/bash

if ! command -v _sf2f; then
    echo "TYPE_ERROR : _sf2f" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d/_sf2f.tst.sh) == "_sf2f" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d/_sf2f.tst.sh) == _sf2f' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d/_sf2f.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d/_sf2f.tst.sh' : return 1" >&2
    return 1
fi
