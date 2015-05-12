#!/bin/bash
################################################################################
#script will fully automate the theming & generation of cursor files
#written by: William Osendott
################################################################################

set -x #comment this line out before distribution, this tells the script to print 
       #everything it does to the terminal. when it prints a variable, it will 
       #print what the variable contains (instead just the variable name)
       #this makes it easier to debug the script.

#######
#INPUT#
####### Get hexcode from user to use as replacement for default color. This
      # could be expanded to edit outline color & grey color as well.

      #get user input, save in newColor variable
      read -p "New Color (as hex-code: #000000) " newColor


################################################################################


#######
#THEME#
####### This section will recolor all .svg files. Could use a config file in
      # order to avoid having to ask for any user input, but this is probably
      # easier.
      #
      # this could be greatly expanded. with .svg files, one could change
      # just about every aspect of them quite easily with bash as the .svg files
      # themselves are plain-text, so you would just have to find "outline" or
      # "stroke", etc. and then replace old value w/ new one. For this, we're
      # just going to look for a hex-code and replace with a different hex-code.

oldColor="#d64933" # variable holds color to be replaced

      #find all .svg files in & below current directory
      #(~/script/.../.../...)
      #replace old color code w/ new one, use values held in variables.
      find . -name '*.svg' -type f -exec sed -i 's/$oldColor/newColor/' {} \;

################################################################################


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
set -x

counter=0 # counter, increments each time file is converted
          # could be removed as it's not needed, but I like to
          # let the user know something every now and again ;)
          # $PWD gets you the directory the script is being ran from


CHANGE=$PWD/src
OUTDIR=$PWD/output
for CURSOR in $PWD/src/*.cursor; do
	BASENAME=$CURSOR
	BASENAME=${BASENAME##*/}
	BASENAME=${BASENAME%.*}
	
	counter=$((count+1))
	(cd $CHANGE;xcursorgen $BASENAME.cursor $OUTDIR/$BASENAME)

done

 echo "$counter file(s) generated"


################################################################################



################################################################################
