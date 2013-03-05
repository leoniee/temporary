#!/bin/bash
echo "\n"
echo "====== 开始同步 temporary 目录 ======"
echo "\n"
cd /home/pop/桌面/临时/git/temporary
git pull temporary master
git add .
git commit -m 'x220i update'
git push temporary master


echo "\n"
echo "====== 开始同步 references 目录 ======"
echo "\n"
cd /home/pop/桌面/临时/git/references
git pull references master
git add .
git commit -m 'x220i update'
git push references master

echo "\n"
echo "====== 开始同步 working 目录 ======"
echo "\n"
cd /home/pop/桌面/临时/git/working
git pull working master
git add .
git commit -m 'x220i update'
git push working master

