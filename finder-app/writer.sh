#!/bin/bash
if [ -z $1 ] || [ -z $2 ]
then
  echo "ERROR"
  exit 1
else
  mkdir -p $(dirname $1)
  touch $1
  echo $2 >> $1
fi