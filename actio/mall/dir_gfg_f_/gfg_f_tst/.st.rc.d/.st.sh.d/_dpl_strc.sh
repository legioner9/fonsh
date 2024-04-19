#!/bin/bash

_dpl_strc() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${HOME}/.st.rc.d/.st.sh.d/${FNN}.sh , line=${LINENO}, ${FNN}() : \${PPWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${CYAN}--- start : ${FUNCNAME}() $@ ---${NORMAL}" #sistem info mesage

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FUNCNAME} :: 
TAGS:
\$1 
[, \$2]
CNTL: 
    _e : _edit body      : _edit ${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh
    _t : _edit tst_dir   : _edit ${HOME}/.st.rc.d/.st.tst.d/_dpl_strc.tst.d
    _d : exec tst_dir_fn : . ${HOME}/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh
EXAM: 
    ${FUNCNAME}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${HOME}/.st.rc.d/.st.tst.d/_dpl_strc.tst.d
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${HOME}/.st.rc.d/.st.tst.d/_dpl_strc.tst.d/_dpl_strc.tst.sh
        return 0
    fi

    if ! _is_rr; then
        echo "in fs= file://${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh, line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_rr' : return 1" >&2
        return 1

    fi
    read -p "continue?"

    if [[ -f ${HOME}/.st.rc.d.zip ]]; then
        rm ${HOME}/.st.rc.d.zip
    fi

    if [[ -f ${ST_RC_D_PATH}/.d/.zip/.st.rc.d.zip ]]; then
        cp ${ST_RC_D_PATH}/.d/.zip/.st.rc.d.zip ${HOME}
    else
        echo "in fs= file://${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh , line=${LINENO}, ${FNN}() : NOT_FILE : 'file://${ST_RC_D_PATH}/.d/.zip/.st.rc.d.zip' : ${hint} : return 1" >&2
        cd $PPWD
        return 1
    fi

    if [[ -d ${HOME}/.st.rc.d ]]; then
        cp -r ${HOME}/.st.rc.d ${HOME}/.st.rc.d~
    else
        echo "in fs= file://${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${HOME}/.st.rc.d' : return 1" >&2
        cd $PPWD
        return 1
    fi

    unzip -o ${HOME}/.st.rc.d.zip

    if ! _is_rr; then
        echo "in fs= file://${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh, line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_is_rr' : be exec : mv -r ${HOME}/.st.rc.d~ ${HOME}/.st.rc.d" >&2
        if ! mv -r ${HOME}/.st.rc.d~ ${HOME}/.st.rc.d; then
            echo "in fs= file://${HOME}/.st.rc.d/.st.sh.d/_dpl_strc.sh, line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'mv -r ${HOME}/.st.rc.d~ ${HOME}/.st.rc.d' : return 1" >&2
            cd $PPWD
            return 1
        fi
    fi

    cd $PPWD
    return 0

}
