#!/bin/sh

for people in keepzero vicky fx 33crazy
do
	echo "$people"
done

echo

#下面演示一个猜词问题，演示while循环
code=007
echo "Guess the code!"
echo "Enter your guess:\c"
read guess
while [ "$guess" != "$code" ]    #until语句类似while
do                               #表达式为假时执行循环体
	echo "Try again!"
	echo "Enter your guess again:\c"
	read guess
#continue,break语句类次c语言
done
echo "Wonderful!"

#case语句
echo "Use one of the following options:"
echo "d or D: Display Date."
echo "l or L: To see the listing of file."
echo "w or w: Who is login."
echo "q : Quit this."
echo "Enter your option:\c"
read option
while [ "$option" != q ] 
do
	case "$option" in
		d|D) date                   # | 管道符表示逻辑或
			;;
		l|L) ls
			;;                      # 两个 ; 划定界限
		w|W) who
			;;
		*) echo "Invalid option."
			;;
	esac                            # case 语句的结束
	echo "Enter option again:\c"
	read option
done
