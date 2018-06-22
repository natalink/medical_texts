#/bin/bash

DATA=Medical_PLOSON

for file in $(find Medical_PLOSON -name \*.txt); do # select all files with extension *txt

   filename="${file##*/}"  # derive filename (without the whole path)

   file_out=`echo "$file" | sed "s/.txt/_OUTPUT.conllu/g"`  #the parsed text will be written into each file separately. The filename contains already the path, so later we can derive categories and sub-categories


   touch $file_out  # open an output file

   echo " processing $file into $file_out"

   #curl -F data=@$file -F model=english -F tokenizer= -F tagger= -F parser= http://lindat.mff.cuni.cz/services/udpipe/api/process | PYTHONIOENCODING=utf-8 python -c "import sys,json; sys.stdout.write(json.load(sys.stdin)['result'])" > $filename_out   # PARSING!!! uncomment when test is ready
   

done
