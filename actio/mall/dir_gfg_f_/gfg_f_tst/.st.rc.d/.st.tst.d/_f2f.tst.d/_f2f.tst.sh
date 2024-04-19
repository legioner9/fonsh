#!/bin/bash

# if true; then
#     echo "_f2f"
# fi

cd ${HOME}/.st.rc.d/.st.tst.d/_f2f.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_f2f.tst.d EXEC_FALI" >&2

cp init.file res

# echo -e "${HLIGHT}--- exec: _f2f one two tst.file ---${NORMAL}" #start files
_f2f insert.file '{\[reciver\]}' res

cat res

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_f2f.tst.d/_f2f.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_f2f.tst.d/_f2f.tst.sh true"
    return 0
fi
