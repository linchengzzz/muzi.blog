#!/bin/bash
#

echo -e "\n\n\t\t ────── 更新博客文章 ────── \t\t\n\n"
read -p "请输入要更新的内容：" commit

git add .
git commit -m${commit}
git push origin master
rm -rf public/*
hexo g
gulp
hexo d
echo -e "\033[32m 博客文章更新成功，请前往网站查看 !!! \033[0m"
