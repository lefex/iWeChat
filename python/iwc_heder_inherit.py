# coding=UTF-8
# 分析继承关系

import re
import iwc_heder_db
import os

# class-dump 导出头文件所在的目录
IPA_HEADER_PATH = '/Users/wangsuyan/Desktop/baidu/reverse/header/wechat'

def iwc_parse_header():
    dirs = os.listdir(IPA_HEADER_PATH)
    for file_name in dirs:
    	header_path = IPA_HEADER_PATH + '/' + file_name
    	# 解析 header file
    	header_file = open(header_path)
    	for index, line in enumerate(header_file):
    		# @interface MMUIWindow : UIWindow <IVOIPWindowExt> 解析类，父类，协议
    		regex = r"^@interface\s+(.{0,})\s+:\s+(.{0,})\s+<*(.{0,})>*"
    		res = re.match(regex, line)
    		if res == None:
    			continue
    		groups = res.groups()
    		if groups == None:
    			continue
    		count = len(groups)
    		if count == 1:
    			name = groups[0]
    		if count == 2:
    			name = groups[0]
    			super_name = groups[1]
    		if count == 3:
    			name = groups[0]
    			super_name = groups[1]
    			protocol = groups[2]
			
			if count == 3:
				iwc_heder_db.iwx_insert(name, super_name, protocol)
				print file_name
				break


# 脚本入口
if __name__ == '__main__':
	iwc_parse_header()
	