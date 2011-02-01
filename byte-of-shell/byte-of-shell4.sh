#Auther:KeepZero
#Date:  2010.3
#运行方式，以一个整数作为命令参数
#!/bin/sh
var1=10
var1=`expr $var1 + 1`       # +,-,\*,/,%;加减乘除余
                            # expr命令使字符串转化为整数
					        #     再将结果转化为字符串
echo "var1+1= $var1"
var1=`expr $var1 \* $var1 / 10`
echo "var1^2/10= $var1"

#下面演示以一个整数作为命令行参数，显示1到该整数之间的所有值
if [ $# != 1 ]           
	then
		echo "Usage: $0 integer-argument"
		exit 1
fi
target="$1"
current=1
while [ $current -le $target ]
do
	echo -e "$current \c"
	current=`expr $current + 1`
done
echo
exit 0
