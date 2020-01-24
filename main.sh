clear 
echo '+------------------+'
cal
echo '+------------------+'
date +'%d/%m/%Y %H:%M:%S'
echo '+------------------+'
echo

# gcc -o sample sample.c
# including any other gcc flags you like
# ./path-to-sample/sample

# intro=$PWD/"01 Preliminaries/01 Introduction"

echo "building: "
echo '+------------------+'
echo "hello.c"
echo '+------------------+'
echo "binaries in ./Results"
echo '+------------------+'

gcc hello.c -o ./Results/hello
objdump -D -M intel ./Results/hello | grep -A20 main.: > ./Results/results.txt
cat ./Results/results.txt
