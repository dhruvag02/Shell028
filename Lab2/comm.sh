#! /bin/sh
# attributes, contents, word count, copy and rename

echo "Enter a file name"
read FLNAME
echo "Enter other name for file to copy contets of first file"
read DESTDIR
cp $FLNAME $DESTDIR
echo "File contents are displayed"
cat $FLNAME
echo "Word Count in file"
wc $FLNAME
echo "Enter to rename"
read RENAME
mv $FLNAME $RENAME
ls


Enter a file name
fil2
Enter alternate name for file
file2
File contents are displayed
This is file 2.
Word Count in file
 1  4 16 fil2
Enter to rename
file
cal.sh	   comm.sh     file   first.sh	  sample.sh
c_area.sh  comm.shell  file2  sample2.sh
