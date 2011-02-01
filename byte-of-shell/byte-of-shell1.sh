#Auther:KeepZero
#Date:  2010.3
#运行方式: $sh 简明shell教程.sh This is arguments and its output 1 2 3 4 5 6
#!/bin/sh
name1=keepzero
name2="Fan Hsu"
name3=test*                #赋值语句 assignment statement

export name1               #导出环境变量，向后继的各个shell进程传递变量的值
export name2 name3         #例如当一个shell脚本被另外一个shell脚本调用时

echo $name1
echo $name2
echo "$name3"
echo $name3                #列出当前目录与test*匹配的文件名

unset name1 name2          #重置变量
name3=                     #留空
echo "$name1 $name2 $name3"

echo '$test1'              #单引号转义？
echo "This is a string!"   
echo *                     #输出当前目录的文件

command=pwd
$command                   #输出当前目录，即执行pwd

command=`pwd`
echo "The corrent directory is $command"
echo "The date and time is `date`"
myname=`echo "Hello World!"`
echo $myname
#命令替换，"`"着重号进行命令替换，shell先执行该命令
#以该命令的结果取代该命令

nowrite=readonly nowrite2=readonlytoo
readonly nowrite nowrite2  #设置只读,符号常量，很少使用
echo "$nowrite $nowrite2"
#nowrite=write             #提示警告出错退出

echo "Enter input: \c"     #"\c"使光标在输入回车时停留在当前行
read line                  #读取标准输入,单词按从左到右赋值给变量
echo -e "You enter: $line\nEnter another line: \c"
                           #当单词数大于变量数时，余下单词赋值给最后一个变量
read word1 word2 word3
echo -e "first:$word1\nsecond:$word2\nthird:$word3"
echo -e "\n"               #\b退格 \c显示新行光标停留原行   \\反斜杠
					   	   #\f换页 \n换行 \r回车 \t水平制表 \v垂直制表
echo "The command name is: $0."
echo "The number of command line arguments passed as parameters are $#."
echo "The value of the command line arguments are: $1 $2 $3 $4 $5 $6 $7 $8 $9."
echo "Another way to dispaly values of all of arguments: $@."
echo "Yet another way is: $*."
#传递脚本参数，$sh 简明shell教程.sh a b c ,前9个参数存储在$1-$9中

shift 2               　 
#命令行参数左移2位，以便编写９个以上脚本参数
echo "The first Three argument is: $1 $2 $3."

set `ls -il $0`
#set改变位置参数的值，与命令替换相结合
echo "$@"

exit 0

