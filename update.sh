#!/bin/bash
echo "path = $1"
echo "script = $2"

cd "$1"
process=$(ps -ef | grep "$2" | awk '{print $2}')

if [ ! -z "$str" ]; then
        pkill -9 $process
fi

echo $(git pull)
$2 &
