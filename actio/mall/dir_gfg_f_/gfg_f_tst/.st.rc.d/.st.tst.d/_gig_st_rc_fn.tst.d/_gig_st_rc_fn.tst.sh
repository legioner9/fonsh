#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d EXEC_FALI" >&2

# if true; then
#     echo "_gig_st_rc_fn"
# fi

# _gig_st_rc_fn >/dev/null

#! : >res

rm ${HOME}/.st.rc.d/.st.sh.d/_TST.sh &>/dev/null
rm ${HOME}/.st.rc.d/.st.tst.d/_TST.tst &>/dev/null
rm -r ${HOME}/.st.rc.d/.st.tst.d/_TST.tst.d &>/dev/null

#! _gig_st_rc_fn "_TST"

#! tree ${HOME}/.st.rc.d/.st.tst.d/_TST.tst.d >>res

# read -p "see file://${HOME}/.st.rc.d/.st.sh.d/_TST.sh"

# rm ${HOME}/.st.rc.d/.st.sh.d/_TST.sh >/dev/null
flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d/_gig_st_rc_fn.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d/_gig_st_rc_fn.tst.sh true"
    return 0
fi
