#!/bin/bash

# 下载 china_ip_list.txt 文件
wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt

# 在每一行前后添加指定内容
sed -i 's/^/IP-CIDR,/' china_ip_list.txt
sed -i 's/$/,no-resolve/' china_ip_list.txt

# 获取文件行数
lines=$(wc -l < china_ip_list.txt)

# 在文件开头插入信息行
sed -i "1i# 内容：中国IP地址段\n# 来源：https://github.com/17mon/china_ip_list/\n# 更新：$(date +%Y-%m-%d)\n# 数量：$lines条" china_ip_list.txt

