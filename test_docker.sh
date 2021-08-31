#!/bin/bash

# run as sudo

cd docker
image_id=""

pattern="Successfully built (.*)"

while read -r line ; do 

  echo $line
  if [[ $line =~ $pattern ]] ; then
    image_id=${BASH_REMATCH[1]}
  fi

done < <(docker build --no-cache .)

if [ -z "$image_id" ] ; then
  exit 1
fi

echo ""

echo "Using image id $image_id"

cmd="docker run -it $image_id "
echo $cmd
