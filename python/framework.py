# coding=UTF-8
# 分析继承关系

import re
import os
import subprocess

# class-dump 导出头文件所在的目录
FRAMEWORK_PATH = '/Users/wangsuyan/Desktop/WeChat.app/WeChat'

def iwc_parse_framework():
    # os.system 调用系统命令
    # os.system('otool -L ' + FRAMEWORK_PATH)


    retsult = subprocess.Popen('otool -L %s'%(FRAMEWORK_PATH))
    print retsult;


# 脚本入口
if __name__ == '__main__':
	iwc_parse_framework()
	