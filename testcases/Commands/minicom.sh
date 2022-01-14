#!/usr/bin/env bash

# ----------------------------------------------------------------------
# Filename:   minicom 
# Version:    1.0
# Date:       2022/01/14
# Author:     Lz
# Email:      lz843723683@gmail.com
# History：     
# 测试主题
#             Version 1.0, 2022/01/14
# Function:   minicom 功能验证
# Out:        
#             0 => TPASS
#             1 => TFAIL
#             2 => TCONF
# ----------------------------------------------------------------------


Title_Env_LTFLIB="minicom 功能测试"

# 本次测试涉及的命令
CmdsExist_Env_LTFLIB="minicom"


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
	minicom -h
	minicom -h | grep -q "terminal program"
	CommRetParse_LTFLIB "minicom -h | grep -q \"terminal program\""
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
