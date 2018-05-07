# coding=UTF-8
# 头文件分类脚本

import os

IWC_ROOT = 'iwechat'

def iwc_mkdir(path):
	

    
def iwc_catagory_list():
	files = set()
	header_path = 'iwc_catagory 2'
	header_file = open(header_path)
    	for index, line in enumerate(header_file):
    		line = line.strip('\n')
    		if '.' in line:
    			try:
    				file_dir = os.path.split(line)[0]
    				file_name = os.path.split(line)[0]
    				iwc_mkdir(IWC_ROOT + '/' + file_dir)
    				open(IWC_ROOT + '/' + file_dir + '/' + file_name, 'w')
    			except Exception, e:
    				print e
    				print line
    				

# 脚本入口
if __name__ == '__main__':
	iwc_catagory_list()