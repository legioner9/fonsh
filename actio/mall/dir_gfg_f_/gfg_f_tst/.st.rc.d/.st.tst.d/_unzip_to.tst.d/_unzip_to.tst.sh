#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/tst.d EXEC_FALI" >&2

# if true; then
#     echo "_unzip_to"
# fi

: >${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/res

if [[ -d dist_init_dir/dir_for_zip ]]; then
    rm -r dist_init_dir/dir_for_zip
fi

zip -rv dir.zip dir_for_zip

_unzip_to dist_init_dir dir.zip

#! touch dist_init_dir/dir_for_zip/x

flag=1

if ! diff -qr dist_init_dir/dir_for_zip dir_for_zip >/dev/null; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh , line=${LINENO} : : FAIL_EXEC : 'diff -qr dist_init_dir/dir_for_zip dir_for_zip' : ${hint} : flag=0" >&2
    diff -r dist_init_dir/dir_for_zip dir_for_zip
    flag=0
fi

tree

# _unzip_to >/dev/null

cd ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d EXEC_FALI" >&2

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_unzip_to.tst.d/_unzip_to.tst.sh true"
    return 0
fi
