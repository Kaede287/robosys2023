#!/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 KAEDE ICHIKAWA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
}

res=0

### I/O TEST ###
out=$(seq 1000 2000 30000 | ./plus)
[ "${out}" = "33,000" ] || ng ${LINENO}

### Error Input Test ###
out=$(seq あ | ./plus)
[ "$?" = 1 ] 					|| ng ${LINENO}
[ "${out}" = "error! 数値を入力して下さい:あ" ] || ng ${LINENO}

out=$(seq 1000 あ 30000 | ./plus)
[ "$?" = 1 ]                                    || ng ${LINENO}
[ "${out}" = "error! 数値を入力して下さい:あ" ] || ng ${LINENO}

### Empty Input Test ###
out=$(seq | ./plus)
[ "$?" = 1 ] 	   || ng ${LINENO}
[ "${out}" = "0" ] || ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
