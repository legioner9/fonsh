#!/bin/bash

echo -e "${CYAN} ${FNN}() help: 
.        MAIN: 
.        NAME: ${FNN}()
.        WHERE:?(only in root dir)Y/N
.        WHAT:?(only abs path [/...] | only name file [name.ext] | any stile path [head_path/name.ext])
.            if arg no rout full_path be pwd/<name_file_with_head_path> , if name root name instead
.        AUTH:?legioner9@inbox.ru
.        DEPR:?(Y|N)
.        ARGS: 
.        \\\$1
.        [ ,\\\$2 num_menu ]
.        CNTLS:
.            required
.            optional -verbose (not garg parsed, for echo main param function) 
.        CNTL inspect : -h, _man, _tst, _extst_1 [,_extst_2 ...], _go, _deb, _mdeb, _list
.                -h : this 
.                _go : ${_edit_} ${FN_DIR}
.                _list : ${_edit_} ${FN_DIR}/${FNN}.list
.            manual 
.                _man : ${_edit_} ${FN_DIR}/${FNN}.man
.                _puml : puml_ ${FN_DIR}/${FNN}.puml -_drawing
.            tst single mane :
.                _tst : . ${FN_DIR}/${FNN}tst/exec.tst
.            deb single mane 
.                _deb : . ${FN_CONT_DIR}/_default/default_deb.sh
.            steps tst single mane :
.                _flw : . ${FN_DIR}/${FNN}tst/_flow_tst.sh
.            menu for deb
.                _mdeb : . ${FN_DEBUG_DIR}/mdeb.sh
.            tst all . exec.extst in ${FN_DIR}/${FNN}extst/extst_1
.                _extst : . ${FN_DIR}/${FNN}extst/extst_1/start_exec.tst
.            tst <num> (exec.extst)
.                _extst<num> . ${FN_DIR}/${FNN}extst/extst_1/ex<num>_tst/exec.extst
.            steps extst_1/ex<num>_tst
.                _exdeb<num> . ${FN_DIR}/${FNN}extst/extst_1/ex<num>_tst/_flow_tst.sh
.
.        CNTL defaut: -_echo, -_debug
.        CNTL develop: -_develop1, ... for special development mode, NOT to product
.
.        DEMANDS for IFS wrp_fn:
.           . dir_${FNN}/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
.           . dir_${FNN}/_gnr_dir_sys.sh create extst in dir_${FNN}
.           . dir_${FNN}/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_${FNN}_mdeb <num>
.           . dir_${FNN}/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_${FNN}_mdeb <num>
.           
.        
.        TAGS: (fs|net|)
.        IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
.        FLOW: (process | subprocess (no read pause only plt_err return \$errno) | interpritator)
.        RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
.        ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
.        WARN: 
.        DEBUG:
.            ${FNN} _deb, ${FNN} _mdeb
.        EXAMP:
.            ${FNN} -<>
.            ${NORMAL}"
