#!/bin/bash
# Author : Lz <lz843723683@163.com>

CMD="head"
TEST_FILE="/var/tmp/head-test"
ret=1

echo "$0 test ${CMD}"

#判断命令是否存在
which ${CMD} >/dev/null 2>&1 
[ $? -ne 0 ]&&{ echo "No command :${CMD}";exit 2; }

cat > ${TEST_FILE} <<EOF
1
2
3
4
5
EOF

head -n1 ${TEST_FILE} |grep -q "1"
ret=$?

rm ${TEST_FILE}

exit $ret
