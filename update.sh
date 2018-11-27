#!/bin/bash
#

echo -e "\n\n\t\t ────── 更新博客文章 ────── \t\t\n\n"
read -p "请输入要更新的内容：" commit

git add .
git commit -m${commit}
git push origin master