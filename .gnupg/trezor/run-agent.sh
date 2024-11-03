#!/bin/sh
export PATH="/usr/local/py3/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:::::/home/rd/go/bin::/home/rd/.cargo/bin:/home/rd/.local/bin:::::/home/rd/go/bin::/home/rd/.cargo/bin:/home/rd/.local/bin"
"/usr/local/py3/bin/trezor-gpg-agent" -vv $*
