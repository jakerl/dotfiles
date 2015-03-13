#!/bin/bash
for filename in *
do
   x=`echo $filename | sed 's/vim\./vim/g'`
   mv $filename $x
done
