# Leetcode 194
# Transpose file


for ((i = 1; ; i++)); do
    line=$(awk -vn=$i '{print $n}' file.txt)
    [[ $line ]] || break
    echo $line
done
