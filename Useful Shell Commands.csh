Command to find the total size of all PDF files in a directory:
% du -csh *.pdf


To find the word “34500” in the current directory and the sub-directories (searching only tcl files)
% find  .  –name  “*.tcl”  | xargs grep “34500”


To find some files and then copy those files into a directory
% find /path/of/dir/ -name ".tcl" | exec cp {} . \;
{} substitutes for each file that is found
\; ends the line that exec will run

To find the word “a12345” in files in a directory and its subdirectory
% find /path/where/you/want/to/search -type f | xargs grep "a12345"

To print the 6th word in each line starting with c:
awk '{print $6}' fileName.txt | grep -E '\bc' >! output.txt

To print the 10th line in a file
sed -n '10p' file.txt === sed -n '10~0p' file.txt
To print every 4th line in a file starting from 0
sed -n '0~4p' file.txt
To print every 4th line in a file starting from 1
sed -n '1~4p' file.txt
To print every odd line in a file starting from 1
sed -n '1~2p' file.txt
To print every even lines in a file starting from 2:
sed -n '0~2p' file.txt
To print every lines from 4 to 6 in a file:
sed -n '4,6p' file.txt

p ===> print
a ===> append

To append a line/word after 2nd line in a file
sed '2a hello' file.txt  === sed '2i hello' file.txt === sed -e '2a\' -e hello file.txt

To replace bunch of lines in a file:
sed '2,9c hello' file.txt ==> replaces lines from 2 to 9 with the workd hello

To transliterate source chars with destination chars
echo hello world | sed 'y/abcdefghij/0123456789/' === 74llo worl3
===============================================================================

Selecting lines
----------------

sed '144s/that/this/' input.txt > output.txt ===> subsituites that with this only in line 144
sed 's/that/this/' input.txt > output.txt ===> subsituites that with this only in the entire input file
sed '/apple/s/that/this/' input.txt > output.txt ===> subsituites that with this only in lines containing 'apple'
sed '/apple/!s/that/this/' input.txt > output.txt ===> subsituites that with this only in lines not containing 'apple'
sed '4,17!s/that/this/' input.txt > output.txt ===> subsituites that with this only in lines 1,2,3 and in lines 18 till the end of file

==========================================================================================

a*b -- zero or more a followed by b --- b,ab,aab
a\?b -- zero or one a followed by b --- ab,b
a\+b -- one or more a followed by b --- ab,aab
.* --- all chars including space
.\+ --- all chars excluding space


https://www.gnu.org/software/sed/manual/sed.html#Other-Commands
https://ryanstutorials.net/linuxtutorial/cheatsheetgrep.php
