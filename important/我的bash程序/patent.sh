#!/bin/sh
#这个程序将下载的专利（zip文件）转换成pdf
for file in `ls *.zip`; 		#得到各文件的文件名
do 
	echo ${file%.zip}; 		#得到的文件名去后缀
	dir=${file%.zip}; 		#将处理的文件名赋予变量dir
	mkdir $dir;			#建立以dir为文件名的目录
	cp -a $file $dir; 		#将目标文件（zip）拷贝到新建的文件夹
	cd $dir;			#进入该文件夹
	unzip -j *.zip; 		#解压目标文件（不包含目录）
	rm *.zip;			#删除zip文件
	tiffcp *.tif $dir.pdf;		#根据文件夹中的tiff文件生成pdf文档
	rm *.tif;			#删除tif文件
	mv *.pdf ..;			#将生成的pdf文件移动到文件夹外
	cd ..;				#回上一级目录
	rm -R $dir;			#删除以专利名称命名的文件夹
done;
rm *.zip;				#删除zip文件
