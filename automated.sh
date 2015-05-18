#############################################
# noname-cursors v0.9.8 rewrite 17 MAY 2015 #
# by: William Osendott  & Umut Topuzoglu    #
#############################################

# set -x # uncomment this if you wanna see what's going on line-by-line, remove before distribution

#############
# variables #
#############
choice="" # light/dark response
themeStyle="" # light/dark variable
tmpColor="" # hold user color choice @ menu
newColor="" # theme color to replace Default
usrColor="" # custom color from dialog
exitcode="" # custom color dialog button press
count="" # counter
CHANGEDIR=$PWD/src # change to source directory in sub-shell
OUTDIR=$PWD/theme/custom-cursors/cursors # where to generate files

# extract source files
tar -xzf src.tar.gz
tar -xzf theme.tar.gz
wait

# light/dark menu ($themeStyle)
dialog --yes-label "light" --no-label "dark" --yesno "Please choose base:" 6 25
choice=$?
case $choice in
  1) (cd $PWD/src;
        find . -type f -name '*.svg' -print0 | while IFS= read -r -d '' file; do
sed -i "s/#e8e8e8/#ff0000/g" "$file"
sed -i "s/#2d2d2d/#e8e8e8/g" "$file"
sed -i "s/#ff0000/#2d2d2d/g" "$file"
sed -i "s/#ffffff/#000000/g" "$file"
done)
wait
echo "dark base generated..."
esac

get_Color()
{
  usrColor=$(dialog --inputbox "Enter hex-code:" 8 40 2>&1 >/dev/tty)
}

dialog --radiolist "Select color:" 20 25 25\
  1 "Default" on \
  2 "Blue" off \
  3 "Brown" off \
  4 "Green" off \
  5 "Grey" off \
  6 "Pink" off \
  7 "Purple" off \
  8 "Red" off \
  9 "Yellow" off \
  10 "Custom" off \
2> color.tmp

tmpColor=$(<color.tmp)
case $tmpColor in
  1) newColor="#d64933" ;;
  2) newColor="#42a5f5" ;;
  3) newColor="#8d6e63" ;;
  4) newColor="#66bb6a" ;;
  5) newColor="#bdbdbd" ;;
  6) newColor="#f06292" ;;
  7) newColor="#7e57c2" ;;
  8) newColor="#ef5350" ;;
  9) newColor="#ffca28" ;;
  10) get_Color
	wait

if ! [[ $usrColor =~ ^#[0-9A-Fa-f]{6}$ ]]; then
    usrColor=""
    get_Color
  else
    newColor=$usrColor
fi ;;
esac


# recolor
(cd $PWD/src;
find . -type f -name '*.svg' -print0 | while IFS= read -r -d '' file; do
if [[ `grep "$oldColor" "$file"` ]]; then
echo "Replacing $oldColor with $newColor in $file"
sed -i "s/$oldColor/$newColor/g" "$file"
wait
fi
done)

# create .png files
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

# create cursor files
count=0
for CURSOR in $PWD/src/*.cursor; do
BASENAME=$CURSOR
BASENAME=${BASENAME##*/}
BASENAME=${BASENAME%.*}

count=$((count+1))
(cd $CHANGEDIR;xcursorgen $BASENAME.cursor $OUTDIR/$BASENAME)
wait
done

# install theme
cp $PWD/theme/custom_cursors/. ~/.icons/custom-cursors/ -R

# clean everything up
rm -rf $PWD/src
rm -rf $PWD/theme
rm -rf $PWD/color.tmp
