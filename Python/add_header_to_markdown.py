# -*- coding: utf-8 -*-

import os


# 要添加的多行注释内容
comment_lines = """---
title: example title
date: 2024/04/21 23:02:02
updated: 2024/04/21 23:02:02
categories:
- [sample, demo]
tags:
- sample
- demo
---
"""

# 要处理的目录
directory = r"C:\Users\maojun\code\markdown"

# 遍历目录中的所有Markdown文件
for root, dirs, files in os.walk(directory):
    for file in files:
        if file.endswith(".md"):
            filepath = os.path.join(root, file)

            # 打开文件并读取内容
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
                
            # 在文件开头添加注释内容
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(comment_lines + '\n' + content)



