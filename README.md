# numix-cursor
An X-cursor-theme for use along with the numixproject products.

This is version 0.9.0 and there is still a lot to discuss. Please install the cursor and play a bit with it. Then
tell me, whether you like it or not and what you would prefer to be changed to suit the numix design. 
I additionally updated this to gnome-look.org (and variants) to see what the community says about it.

This theme is tested only under Ubuntu with the Unity desktop, but should work fine with all of its' most popular desktop derivates. (KDE, xfce, lxde)

For the moment, the only size supported is 24px and one color scheme.
I generated all the x-cursor files and png images by hand, for the design I used Inkscape. For the links in the src directory, I used the most popular x-cursor themes on gnome-look.org.

I will be working on proper bash scripts for png and cursor generation to minimize the work. (I could probably use some help here, because I am new to bash scripting).

## Current design preview

![](default/left_ptr.svg "left_ptr")
![](default/left_ptr_watch_01.svg "left_ptr_watch")
![](animation/left_ptr_watch.gif "left_ptr_watch-animated")
![](default/copy.svg "copy")
![](default/move.svg "move")
![](default/link.svg "link")
![](default/circle.svg "circle")
![](default/context-menu.svg "context-menu")
![](default/right_ptr.svg "right_ptr")
![](default/up-arrow.svg "up-arrow")
![](default/watch_01.svg "watch")
![](animation/watch.gif "watch-animated")
![](default/hand2.svg "hand2")
![](default/openhand.svg "openhand")
![](default/dnd-none.svg "dnd-none")
![](default/dnd-copy.svg "dnd-copy")
![](default/dnd-move.svg "dnd-move")
![](default/dnd-link.svg "dnd-link")
![](default/dnd-ask.svg "dnd-ask")
![](default/xterm.svg "xterm")
![](default/vertical-text.svg "vertical-text")
![](default/color-picker.svg "color-picker")
![](default/pencil.svg "pencil")
![](default/plus.svg "plus")
![](default/crossed_circle.svg "crossed_circle")
![](default/question_arrow.svg "question_arrow")
![](default/zoom-in.svg "zoom-in")
![](default/zoom-out.svg "zoom-out")
![](default/X_cursor.svg "X_cursor")
![](default/pirate.svg "pirate")
![](default/sb_v_double_arrow.svg "sb_v_double_arrow")
![](default/sb_h_double_arrow.svg "sb_h_double_arrow")
![](default/bd_double_arrow.svg "bd_double_arrow")
![](default/fd_double_arrow.svg "fd_double_arrow")
![](default/size_all.svg "size_all")
![](default/sb_down_arrow.svg "sb_down_arrow")
![](default/sb_left_arrow.svg "sb_left_arrow")
![](default/sb_right_arrow.svg "sb_right_arrow")
![](default/sb_up_arrow.svg "sb_up_arrow")
![](default/top_left_corner.svg "top_left_corner")
![](default/top_right_corner.svg "top_right_corner")
![](default/bottom_left_corner.svg "bottom_left_corner")
![](default/bottom_right_corner.svg "bottom_right_corner")
![](default/top_side.svg "top_side")
![](default/bottom_side.svg "bottom_side")
![](default/left_side.svg "left_side")
![](default/right_side.svg "right_side")
![](default/ll_angle.svg "ll_angle")
![](default/lr_angle.svg "lr_angle")
![](default/ul_angle.svg "ul_angle")
![](default/ur_angle.svg "ur_angle")
![](default/top_tee.svg "top_tee")
![](default/bottom_tee.svg "bottom_tee")
![](default/left_tee.svg "left_tee")
![](default/right_tee.svg "right_tee")
![](default/cross.svg "cross")
![](default/crosshair.svg "crosshair")
![](default/tcross.svg "tcross")
![](default/dot.svg "dot")
![](default/dotbox.svg "dotbox")

## Installing

1. Download or clone this repository to any location
2. From that directory:
3. Run automate.sh and follow the prompts. Files will be automatically generated, and copied to your ~/.icons directory.
4. Use Tweak-Tool and select "Numix-Cursors" as your cursor theme.

Enjoy!

## NOTE: 
if you wish to edit the files manually using inkscape (currently only working method) copy the files in /default to /src and make
your edits then run generate-only.sh to convert, generate, and install cursors.
