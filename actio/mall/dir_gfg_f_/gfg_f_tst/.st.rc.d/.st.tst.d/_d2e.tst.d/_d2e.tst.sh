#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d EXEC_FALI" >&2

if true; then
    echo "_d2e"
fi

# _d2e >/dev/null

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh true"
    return 0
fi