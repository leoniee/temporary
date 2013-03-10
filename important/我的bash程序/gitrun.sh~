#!/bin/bash   
echo "\n"
echo "现在是"$(date '+%Y-%m-%d-%H:%M:%S')
nowtime=$(date '+%Y-%m-%d-%H:%M:%S')
thishostname=$(hostname)
modify_tag=$nowtime"_"$thishostname
echo "本地同步信息："$modify_tag
echo "\n"
echo "\n"
echo "====== 开始同步 temporary 目录 ======"
echo "\n"
cd /home/pop/桌面/临时/git/temporary
git pull temporary master
git add .
git commit -m $modify_tag
git push temporary master


echo "\n"
echo "====== 开始同步 references 目录 ======"
echo "\n"
cd /home/pop/桌面/临时/git/references
git pull references master
git add .
git commit -m $modify_tag
git push references master

echo "\n"
echo "====== 开始同步 working 目录 ======"
echo "\n"
cd /home/pop/桌面/临时/git/working
git pull working master
git add .
git commit -m $modify_tag
git push working master

