# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
read -p "Enter KTU Roll Number: " regno;
sum=0;
num=0;
for ((i=0;i<${#regno};i++))
do
    var="${regno:$i:1}"
    if [[ "$var" =~ ^[0-9]+$ ]]
    then
        num=$(($num*10+$var))
    fi
done 
for ((i=1;i<${#num};i=i+2))
do
sum=$(($sum+${num:$i:1}))
done
echo $sum;