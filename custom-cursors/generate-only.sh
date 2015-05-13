#!/bin/bash
# 
# this script is for manual-edits only! you should have copied the files from /default to /src and performed your edits manually
# using Inkscape or similar then run this script.
#
# -william osendott 
#
######
#PNGS#
###### Generate .png files from .svg files in /src/ dir

count=0 # counter, increments each time file is converted
        # could be removed as it's not needed, but I like to
        # let the user know something every now and again ;)

for fileSource in $PWD/src/*.svg
do
    if [ -f "$fileSource" ]; then
        count=$((count+1))
        file=$(echo $fileSource | cut -d'.' -f1)
        echo "$count". "$fileSource" -> "$file.png"
        inkscape $fileSource --export-png=$file.png --export-dpi=90
    else
        echo "no file $fileSource found!"
    fi
done
echo "$count file(s) converted"



################################################################################



##########
#GENERATE#
########## Grab all .cursor files for /src/ directory, pass them through
         # xcursorgen to generate files.

counter=0 # counter, increments each time file is converted
          # could be removed as it's not needed, but I like to
          # let the user know something every now and again ;)
          # $PWD gets you the directory the script is being ran from


CHANGEDIR=$PWD/src
OUTDIR=$PWD/theme/Numix-Cursor/cursors
for CURSOR in $PWD/src/*.cursor; do
	BASENAME=$CURSOR
	BASENAME=${BASENAME##*/}
	BASENAME=${BASENAME%.*}
	
	counter=$((count+1))
	(cd $CHANGEDIR;xcursorgen $BASENAME.cursor $OUTDIR/$BASENAME)

done

 echo "$counter file(s) generated"
 echo ""
 echo "removing /src directory..."
 rm -rf $PWD/src
 echo ""
 echo "...done"
 echo ""
 echo "installing cursors to ~/.icons/ directory..."
 cp $PWD/theme/Numix-Cursor/ ~/.icons/Numix-Cursor -R
 echo ""
 echo "...done"
 echo ""
 echo "please use tweak-tool to set cursor theme to Numix-Cursor"

