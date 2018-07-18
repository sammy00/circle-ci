#!/bin/bash

#hello=($(git log --pretty=format:"%s" -n 2))

#echo ${hello[*]}

world='hello [doc]'
world2='hello [doc2]'

if ! [[ ${world} =~ ^.*\[doc\]$ ]]; then
  echo "hello"
fi

if ! [[ ${world2} =~ ^.*\[doc\]$ ]]; then
  echo "hello2"
fi

echo "world"