#!/bin/bash
################################################################################
#script will fully automate the theming & generation of cursor files
#written by: William Osendott
################################################################################

###########################################################################

#############
# variables # default values - variables will be set by script when ran
#############
themeStyle=light # light/dark
newColor=#d64933 # any hex-color
oldColor=#d64933 # any hex-color
# fileSource - holds .svg filg in create_png
count=0 # counter used to keep track of files converted/generated
CHANGEDIR=$PWD/src # change to source directory in sub-shell
OUTDIR=$PWD/theme/custom-cursors/cursors # where to generate files
# CURSOR - will hold the name of .cursor file in generate_xmc
# BASENAME - holds of cursor have path + extension stripped in generate_xmc

###########################################################################

#############
# functions # **list of functions goes here **
#############

startup()
{
tar -xzf src.tar.gz
tar -xzf theme.tar.gz
}

theme()
{
(cd $PWD/src;
find . -type f -name '*.svg' -print0 | while IFS= read -r -d '' file; do
if [[ `grep "$oldColor" "$file"` ]]; then
echo "Replacing $oldColor with $newColor in $file"
sed -i "s/$oldColor/$newColor/g" "$file"
wait
fi
done)
}

generate_png()
{
count=0  
for fileSource in $PWD/src/*.svg
do
if [ -f "$fileSource" ]; then
count=$((count+1))
file=$(echo $fileSource | cut -d'.' -f1)
echo "$count". "$fileSource" -> "$file.png"
inkscape $fileSource --export-png=$file.png --export-dpi=90
wait
else
echo "no file $fileSource found!"
exit 
fi
done

echo "$count file(s) converted"
}

create_cursors()
{
count=0
for CURSOR in $PWD/src/*.cursor; do
BASENAME=$CURSOR
BASENAME=${BASENAME##*/}
BASENAME=${BASENAME%.*}

count=$((count+1))
(cd $CHANGEDIR;xcursorgen $BASENAME.cursor $OUTDIR/$BASENAME)
wait
done
}

install_cursors()
{
cp $PWD/theme/custom_cursors/. ~/.icons/custom-cursors/ -R
}

cleanup()
{
rm -rf $PWD/src
rm -rf $PWD/theme
}

menu()
{
echo "Choose main color:"
echo "default, blue, brown, green, grey, orange, pink, purple, red, yellow"
echo "or enter a custom hex-code, starting with #"
read -p ">> " newColor
printf "\n"
}

theme_dark()
{
(cd $PWD/src;
        find . -type f -name '*.svg' -print0 | while IFS= read -r -d '' file; do
sed -i "s/#e8e8e8/#ff0000/g" "$file"
sed -i "s/#2d2d2d/#e8e8e8/g" "$file"
sed -i "s/#ff0000/#2d2d2d/g" "$file"
sed -i "s/#ffffff/#000000/g" "$file"
done)
echo "dark base generated..."
}

###########################################################################

startup

########
# MENU # will be replaced with a proper menu next edit.
########

echo "Light or Dark base?"
read -p "(default: light) >>" themeStyle
printf "\n"

menu

if [[ $themeStyle == d* ]]; then
theme_dark
else
echo "using light base..."
fi

case "$newColor" in
"default" )
newColor=#d64933 
;;
"blue" )
newColor=#42a5f5 
;;
"brown" )
newColor=#8d6e63 
;;
"green" )
newColor=#66bb6a 
;;
"grey" )
newColor=#bdbdbd 
;;
"orange" )
newColor=#f57c00 
;;
"pink" )
newColor=#f06292 
;;
"purple" )
newColor=#7e57c2 
;;
"red" )
newColor=#ef5350 
;;
"yellow" )
newColor=#ffca28 
;;
esac

# make sure color-code is valid
if ! [[ $newColor =~ ^#[0-9A-Fa-f]{6}$ ]]; then
echo -e \ "Error, choose a valid color, if using a custom hex-code, don't forget the #. Try again..."
echo ""
menu
fi

theme
generate_png
create_cursors
install_cursors
cleanup






################################################################################
