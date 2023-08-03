sd=$(ls -d "$PWD"/*)

sed -i !(*.zip) $sd

echo sd