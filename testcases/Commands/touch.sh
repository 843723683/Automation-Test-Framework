#!/usr/bin/env bash

# ----------------------------------------------------------------------
# Filename:   timeout 
# Version:    1.0
# Date:       2021/06/25
# Author:     Lz
# Email:      lz843723683@gmail.com
# History：     
#             Version 1.0, 2021/01/12
# Function:   timeout 功能验证
# Out:        
#             0 => TPASS
#             1 => TFAIL
#             2 => TCONF
# ----------------------------------------------------------------------

# 测试主题
Title_Env_LTFLIB="timeout 功能测试"

# 本次测试涉及的命令
CmdsExist_Env_LTFLIB="timeout"


## TODO : 个性化,初始化
#   Out : 0=>TPASS
#         1=>TFAIL
#         2=>TCONF
TestInit_LTFLIB(){
	return ${TPASS}
}


## TODO : 清理函数
#   Out : 0=>TPASS
#         1=>TFAIL
#         2=>TCONF
TestClean_LTFLIB(){
	return ${TPASS}
}


## TODO : 测试用例
testcase_1(){
	timeout 1 sleep 2
	test $? -eq 124
	CommRetParse_LTFLIB "timeout 1 sleep 2 :执行失败"

	timeout 2 sleep 1
	CommRetParse_LTFLIB "timeout 2 sleep 1 :执行成功"
}

## TODO : 测试用例集
#   Out : 0=>TPASS
#         1=>TFAIL
#         2=>TCONF
Testsuite_LTFLIB(){
	testcase_1

	return $TPASS
}


#----------------------------------------------#

source "${LIB_LTFLIB}"
Main_LTFLIB $@
