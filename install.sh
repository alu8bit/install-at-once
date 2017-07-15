#!/usr/bin/env bash

# packages directory or file
SOURCE=''
# show only list of available packages in SOURCE directory
SHOW_LIST_ONLY=false
# show only commands installation for SOURCE
SHOW_COMMANDS_ONLY=false

_process_source_file() {
    if ${SHOW_COMMANDS_ONLY}; then
        echo `grep '#' -v $1`
    elif ${SHOW_LIST_ONLY}; then
        echo $1
    else
        source $1
    fi
}

_process_source_dir() {
    for file in `find ${1} -type f -iname '*.sh'`
    do
        _process_source_file ${file}
    done
}


while getopts ":lcs:h" opt; do
  case ${opt} in
    s)
        SOURCE=$OPTARG
        ;;
    l)
        SHOW_LIST_ONLY=true
        ;;
    c)
        SHOW_COMMANDS_ONLY=true
        ;;
    h)
        cat 'help.txt'
        exit 0
        ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument" >&2
      exit 1
      ;;
  esac
done


if [[ -f ${SOURCE} ]]; then
    _process_source_file ${SOURCE}
elif [[ -d ${SOURCE} ]]; then
    _process_source_dir ${SOURCE}
else
    echo 'Error: source option -s is mandatory and should be dir or file'
    exit 1
fi
