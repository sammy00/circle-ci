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


          if ! [[ ${commitDesc} =~ ^.*\[doc\]$ ]]; then 
            exit 0
          fi
          git config --global user.email ${GH_EMAIL}
          git config --global user.name ${GH_USER}
          echo 'making doc'
          rm -rf build
          mkdir build
          echo "deply hello ${CIRCLE_SHA1}" >> build/doc.txt
          git add -A
          git commit -m "hello deploy"
          git push origin master
          echo 'done making doc' 