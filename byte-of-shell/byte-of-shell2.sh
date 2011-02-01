#程序控制流命令
#运行方式: $ sh 简明shell编程-2.sh file
#!/bin/sh
if [ $# -eq 0 ]
	then
		echo "Usage: $0 file"
		exit 1
fi
if [ $# -gt 1 ]
	then
		echo "Usage only one file"
		exit 1
fi
if [ -f "$1" ]
	then
		filename="$1"
		set `ls -li $filename`
		inode="$1"
		size="$6"
		echo -e "Name\tInode\tSize"
#linux要用 -e 使转义符生效
		echo
		echo -e "$filename\t$inode\t$size"
		exit 0
	else
		echo "$0:argument is not a ordinary_file"
fi
#下面为处理目录，显示目录下所有文件和子目录数目,(为了将两个程序合在一起
#程序有重复部分,只是为了演示另外一种elif语句)
if [ $# -eq 0 ]
	then
		echo "Usage: $0 file"
		exit 1
	elif [ $# -gt 1 ]
		then
			echo "Usage: $0 only-one-file"
			exit 1
	elif [ -d "$1" ]
		then 
			nfiles=`ls "$1" | wc -w`
			echo "The number of files in the directory is $nfiles"
			exit 0
	else
			echo "Some wrong happened."
			exit 1
fi
