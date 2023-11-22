#!/bin/bash -xv 
# SPDX-FileCopyrightText: 2023 KAEDE ICHIKAWA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
}

res=0

### 数字テスト###
out=$(seq 1000 2000 30000 | ./plus)
[ "${out}" = "33,000" ] || ng ${LINENO}

out=$(seq 1000 2000 3000 | ./plus)
[ "${out}" = "5,000" ] || ng ${LINENO}

out=$(seq 10000 10000 10000 | ./plus)
[ "${out}" = "30,000" ] || ng ${LINENO}

### 文字を含むとき ###
out=$(seq あ | ./plus)
[ "$?" = 1 ] 					|| ng ${LINENO}
[ "${out}" = "error! 数値を入力して下さい:あ" ] || ng ${LINENO}

out=$(seq 1000 あ 30000 | ./plus)
[ "$?" = 1 ]                                    || ng ${LINENO}
[ "${out}" = "error! 数値を入力して下さい:あ" ] || ng ${LINENO}

out=$(seq 1000 a 30000 | ./plus)
[ "$?" = 1 ]                                    || ng ${LINENO}
[ "${out}" = "error! 数値を入力して下さい:あ" ] || ng ${LINENO}

$(seq 1000 A 30000 | ./plus)
[ "$?" = 1 ]                                    || ng ${LINENO}
[ "${out}" = "error! 数値を入力して下さい:あ" ] || ng ${LINENO}

### Empty Input Test ###
out=$(seq | ./plus)
[ "$?" = 1 ] 	   || ng ${LINENO}
[ "${out}" = "0" ] || ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
