#!/bin/bash

if ! command -v _unzip_to; then
    echo "TYPE_ERROR : _unzip_to" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh) == "_unzip_to" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh) == _unzip_to' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh' : return 1" >&2
    return 1
fi
