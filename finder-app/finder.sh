#!/bin/bash
if [ -z $1 ] || [ -z $2 ]
then
  echo "ERROR"
  exit 1
elif [ ! -d $1 ]
then
  echo "ERROR"
  exit 1
else
  X=$( ls $1 | wc -l )
  Y=$( grep -r $2 $1 | wc -l )
  echo The number of files are $X and the number of matching lines are $Y
fi