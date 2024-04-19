#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d EXEC_FALI" >&2

# if true; then
#     echo "_sd2d"
# fi

: >res

if [[ -d tst.d/init_RES.d ]]; then
    rm -r tst.d/init_RES.d >/dev/null
fi

echo -e "${HLIGHT}--- exec: _sd2d _XXX _RES tst.d/init_XXX.d ---${NORMAL}" #start files

_sd2d "_XXX" "_RES" "tst.d/init_XXX.d"

# if ! _sd2d _XXX _RES tst.d/init_XXX.d; then
#     echo "in fs= file://${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh , line=${LINENO} : EXEC_FAIL : '_sd2d _XXX _RES tst.d/init_XXX.d' : ${hint} : return 1"
#     # return 1
# fi

# echo -e "${HLIGHT}--- exec: tree tst.d ---${NORMAL}" #start files
tree tst.d >>res
# echo -e "${HLIGHT}--- exec: cat tst.d/init_RES.d/file_RES.f ---${NORMAL}" #start files
cat tst.d/init_RES.d/file_RES.f >>res
echo >>res
cat tst.d/init_RES.d/file.f >>res
echo >>res
# echo -e "${HLIGHT}--- exec: cat tst.d/init_RES.d/inner_RES.d/file_inner_RES.f ---${NORMAL}" #start files
cat tst.d/init_RES.d/inner_RES.d/file_inner_RES.f >>res
echo >>res
cat tst.d/init_RES.d/inner_RES.d/file_inner.f >>res
echo >>res



# _sd2d >/dev/null
# . '/home/st/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh'

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_sd2d.tst.d/_sd2d.tst.sh true"
    return 0
fi
