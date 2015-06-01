#!/bin/bash

###############################################
# Custom Cursors v0.9.9-3 reWrite 21 MAY 2015 #
# by: William Osendott & Umut Topuzoglu       #
###############################################

######################
# Check dependencies # (I'm sure this can be improved? need to atleast add dialogs explaining why it's exiting)
######################
type "inkscape" >/dev/null 2>&1 || { echo >&2 "Inkscape required for script to operate..."; exit 1; }
type "xcursorgen" >/dev/null 2>&1 || { echo >&2 "Xcursorgen required for script to operate..."; exit 1; }
type "dialog" >/dev/null 2>&1 || { echo >&2 "Dialog required for script to operate..."; exit 1; }
type "gksudo" >/dev/null 2>&1 || { echo >&2 "gksudo required for script to operate..."; exit 1; }

#########################
# progress bar function #
#########################
show_progress()
{
percentage=$(( 100*$count/$totalCOUNT ))
echo $percentage | dialog --backtitle "$scriptNAME $scriptVER" --title "$procTITLE" --gauge "" 5 70 0
count=$((count+1))
}

###################
# cleaup function #
###################
cleanup()
{
rm -rf $PWD/src
rm -rf $PWD/theme
rm -rf $PWD/usrCHOICE
clear
exit
}

####################################
# function to get custom hex-color #
####################################
get_hexcolor()
{
hexCOLOR=$(dialog --backtitle "$scriptNAME $scriptVER" --inputbox "Enter hex-color code (include #)..." 8 40 "#1793d0" 2>&1 >/dev/tty)

usrINPUT=$?

case $usrINPUT in
  0) usrCOLOR=$hexCOLOR ;;
  1) cleanup ;;
  255) cleanup
esac
}

#############
# Variables #
#############
scriptNAME="Custom Cursors"
scriptVER="0.9.9-3"
count="0"
sourceDIR="$PWD/src"
outputDIR="$PWD/theme/custom_cursors/cursors"
oldCOLOR="#d64933"

########################
# extract source files #
########################
tar -xzf src.tar.gz
tar -xzf theme.tar.gz
wait

##########################
# show light/dark choice #
##########################
dialog --backtitle "$scriptNAME $scriptVER" --yes-label "Light" --no-label "Dark" --yesno "Please choose base..." 5 25

usrINPUT=$?

case $usrINPUT in
  0) cursorBASE="Light"  ;;
  1) cursorBASE="Dark" ;;
  255) cleanup
  exit ;;
esac

################################
# show highlight color choices #
################################
dialog --backtitle "$scriptNAME $scriptVER" --menu "Choose highlight color..." 17 29 15 \
"1" "Numix (Default)" \
"2" "Blue" \
"3" "Brown" \
"4" "Green" \
"5" "Grey" \
"6" "Pink" \
"7" "Purple" \
"8" "Red" \
"9" "Yellow" \
"10" "Custom" \
2> usrCHOICE

usrCHOICE=$(<usrCHOICE)

usrINPUT=$?

case $usrINPUT in
  0)
    case $usrCHOICE in
    1) newCOLOR="#d64933"
    colorNAME="Numix" ;;
    2) newCOLOR="#42a5f5"
    colorNAME="Blue" ;;
    3) newCOLOR="#8d6e63"
    colorNAME="Brown" ;;
    4) newCOLOR="#66bb6a"
    colorNAME="Green" ;;
    5) newCOLOR="bdbdbd"
    colorNAME="Grey" ;;
    6) newCOLOR="f06292"
    colorNAME="Pink" ;;
    7) newCOLOR="#7e57c2"
    colorNAME="Purple" ;;
    8) newCOLOR="#ef5350"
    colorNAME="Red" ;;
    9) newCOLOR="#ffca28"
    colorNAME="Yellow" ;;
    10)
      until [[ $usrCOLOR =~ ^#[0-9A-Fa-f]{6}$ ]] ; do
      get_hexcolor
      done

      colorNAME="Custom"
      newCOLOR=$usrCOLOR ;;

    *) cleanup ;;
  esac ;;

  1) cleanup ;;
  255) cleanup ;;
esac

#################
# process files #
#################
procTITLE="Creating $cursorBASE cursors with $colorNAME ($newCOLOR) highlights..."

totalCOUNT=`ls -1 $PWD/src/*.svg 2>/dev/null | wc -l`

for eachFILE in $PWD/src/*.svg
do
  BASENAME=$eachFILE
  BASENAME=${BASENAME##*/}
  BASENAME=${BASENAME%.*}

  case  $cursorBASE in
    Dark)
    sed -i 's/#e8e8e8/#ff0000/g;s/#2d2d2d/#e8e8e8/g;s/#ff0000/#2d2d2d/g;s/#ffffff/#000000/g' "$eachFILE" ;;
  esac

  sed -i "s/$oldCOLOR/$newCOLOR/g" "$eachFILE"

  fileNAME=$(echo $eachFILE | cut -d'.' -f1)

  inkscape $eachFILE --export-png=$fileNAME.png --export-dpi=90 > /dev/null
  wait

  (cd $sourceDIR;xcursorgen $BASENAME.cursor $outputDIR/$BASENAME > /dev/null)
  wait

  show_progress

done

###########################
# install generated files #
###########################
usrPassword="$( gksudo --print-pass --message 'Installing to usr/share/icons requires sudo password. Type your password, or press Cancel to about.' -- : 2>/dev/null )"

 # Check for null entry or cancellation.
if [[ ${?} != 0 || -z ${usrPassword} ]]
then
    # need to add dialog message here
    cleanup
    exit 4
fi

 # Check that the password is valid.
if ! sudo -kSp '' [ 1 ] <<<"${usrPassword}" 2>/dev/null
then
    # need to add dialog message here too
    cleanup
    exit 4
fi

echo -e $usrPassword | sudo -S cp $PWD/theme/custom_cursors/. /usr/share/icons/custom-cursors/ -r



##################################
# display exit message & cleanup #
##################################
dialog --backtitle "$scriptNAME $scriptVER" --title "Thank You!" --msgbox "Cursor files have been generated and installed to your ~/.icons directory. You can use tweak-tool to set cursor theme to Custom-Cursors. Enjoy!" 8 50
cleanup
