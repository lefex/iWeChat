# coding=UTF-8
# 文件的数据库

import sqlite3

# 数据库名称
IWC_DB_NAME = 'iwechat.db'

IWC_TREE_NODE = '----'

conn = sqlite3.connect(IWC_DB_NAME)
c = conn.cursor()

# 创建表
def iwc_create_table():
    c.execute("CREATE TABLE IF NOT EXISTS iwcheader(name TEXT PRIMARY KEY NOT NULL, supername TEXT, protocol TEXT)")
    conn.commit()

def iwc_create_index():
    c.execute(
        "CREATE INDEX IF NOT EXISTS podlib_name ON iwcheader(name)")
    c.execute(
        "CREATE INDEX IF NOT EXISTS podlib_super ON iwcheader(supername)")
    conn.commit()

def iwx_insert(name, supername, protocol):
	try:
		c.execute("INSERT INTO iwcheader VALUES (?,?,?)", (name, supername, protocol))
		conn.commit()
	except Exception as err:
		print err


def iwx_query_class(supername):
	cursor = c.execute("SELECT * FROM iwcheader WHERE supername=? ORDER BY name", (supername,))
	values = cursor.fetchall()
	return values

# 最多6层继承
def iwx_query_class_print(supername):
	# 一级继承
	print supername

	# 二级继承
	values = iwx_query_class(supername)
	if len(values) > 0:
		for row in values:
			print IWC_TREE_NODE * 1 + ' ' + row[0]

			# 三级继承
			values = iwx_query_class(row[0])
			if len(values) > 0:
				for row in values:
					print IWC_TREE_NODE * 2 + ' ' + row[0]

					# 四级继承
					values = iwx_query_class(row[0])
					if len(values) > 0:
						for row in values:
							print IWC_TREE_NODE * 3 + ' ' + row[0]

							# 五级继承
							values = iwx_query_class(row[0])
							if len(values) > 0:
								for row in values:
									print IWC_TREE_NODE * 4 + ' ' + row[0]

									# 六级继承
									values = iwx_query_class(row[0])
									if len(values) > 0:
										for row in values:
											print IWC_TREE_NODE * 5 + ' ' + row[0]

# 脚本入口
if __name__ == '__main__':
    iwc_create_table()
    iwc_create_index()
    iwx_query_class_print('UIWindow')