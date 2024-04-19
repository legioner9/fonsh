#!/bin/bash

if ! command -v _gig_st_rc_fn; then
    echo "TYPE_ERROR _gig_st_rc_fn" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d/_gig_st_rc_fn.tst.sh) == "_gig_st_rc_fn" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d/_gig_st_rc_fn.tst.sh) == _gig_st_rc_fn' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d/_gig_st_rc_fn.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_gig_st_rc_fn.tst.d/_gig_st_rc_fn.tst.sh' : return 1" >&2
    return 1
fi
