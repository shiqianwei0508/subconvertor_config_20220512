# -*- coding: utf-8 -*-


# 打开 hosts 文件
with open('hosts', 'r') as file:
    lines = file.readlines()

# 替换每行内容
new_lines = []
for line in lines:
    if line.startswith('0.0.0.0 '):
        new_line = line.replace('0.0.0.0 ', 'DOMAIN-SUFFIX,')
    else:
        new_line = line
    new_lines.append(new_line)

# 将修改后的内容写回 hosts 文件
with open('hosts', 'w') as file:
    file.writelines(new_lines)

