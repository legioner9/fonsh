#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst.d EXEC_FALI" >&2

# if true; then
#     echo "_XXX"
# fi

# _XXX >/dev/null

: > res

_prs_f -d /the/path/_foo.txt  >> res # /the/path 
_prs_f -ne /the/path/_foo.txt >> res # _foo.txt   
_prs_f -n /the/path/_foo.txt  >> res # _foo   
_prs_f -e /the/path/_foo.txt  >> res # txt   
_prs_f -pr /the/path/_foo.txt >> res # _   
_prs_f -po /the/path/_foo.txt >> res # foo.txt 

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst.d/_prs_f.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_prs_f.tst.d/_prs_f.tst.sh true"
    return 0
fi