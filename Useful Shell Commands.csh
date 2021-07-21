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
