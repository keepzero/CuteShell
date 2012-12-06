#!/bin/bash

# Manual

# $0
# $1
# $2, $3, ...
# $# 参数个数
# $@ 参数本身的列表，不包括本身
# $* 类似
# "$@" and "$*" 的区别见下面代码

if [[ $# == 0 ]]; then
    echo "Usage: $0 [options ...]"
else
    # $*
    echo '$*:' "$*"
    for arg in "$*"; do
        echo $arg
    done

    # $@
    echo '$@:' "$@"
    for arg in "$@"; do
        echo $arg
    done
fi




