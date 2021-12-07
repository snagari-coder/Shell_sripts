# Leetcode 192
============================================================================================
Write a bash script to calculate the frequency of each word in a text file words.txt.

For simplicity sake, you may assume:

words.txt contains only lowercase characters and space ' ' characters.
Each word must consist of lowercase characters only.
Words are separated by one or more whitespace characters.
Example:

Assume that words.txt has the following content:

the day is sunny the the
the sunny is is
Your script should output the following, sorted by descending frequency:

the 4
is 3
sunny 2
day 1
======================================================================================================
sed -e 's/ /\n/g' file.txt | sed -e '/^$/d' | sort | uniq -c | sort -r | awk '{print $2" "$1}'

Explanation
-----------
sed -e 's/ /\n/g' word.txt - converts spaces to newlines to give us one word per line
sed -e '/^$/d' - deletes blank lines
sort - sorts the word alphabetically (this is needed for uniq -c to work)
uniq -c - outputs each word preceded by the frequency count
sort -r - sorts in decreasing frequency order
awk '{ print $2" "$1}' - swaps the column order to match the question's requirements.
