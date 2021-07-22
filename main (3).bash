# 
# Welcome to GDB Online.
# GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
# C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
# Code, Compile, Run and Debug online from anywhere in world.
# 
# 
count=0;
p=0;
while IFS= read -r line; do
    if (( $count >= 4 && count <= 8))
    then
        if [[ $(rev <<< "$line") == "$line" ]]; then
            ((p++));
        fi
    fi
    ((count++));
done < sample.txt
echo "Number of palindrome $p";