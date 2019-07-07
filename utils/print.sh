#!/bin/sh
msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "${green}[✔]${none} ${1}${2}"
    fi
}

error() {
    msg "${red}[✘]${none} ${1}${2}"
    exit 1
}
