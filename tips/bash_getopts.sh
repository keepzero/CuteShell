#!/bin/bash

# getopts
# bash buildin


if [[ $# == 0 ]]; then
    echo "Usage: $0 [-a param] [-b] [-c]"
else
    # getopts 不支持长选项
    # args 选项后面的冒号表示该选项需要参数
    while getopts "a:bc" arg; do
        case $arg in
            a)
                echo "a's arg:$OPTARG"
                ;;
            b)
                echo "b"
                exit 0
                ;;
            c)
                echo "c"
                ;;
            ?)
                echo "unknow argument"
                exit 1
                ;;
        esac
    done
fi
