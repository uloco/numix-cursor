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

![](default/left_ptr.png "left_ptr")
![](default/left_ptr_watch_01.png "left_ptr_watch")
![](animation/left_ptr_watch.gif "left_ptr_watch-animated")
![](default/copy.png "copy")
![](default/move.png "move")
![](default/link.png "link")
![](default/circle.png "circle")
![](default/context-menu.png "context-menu")
![](default/right_ptr.png "right_ptr")
![](default/up-arrow.png "up-arrow")
![](default/watch_01.png "watch")
![](animation/watch.gif "watch-animated")
![](default/hand2.png "hand2")
![](default/openhand.png "openhand")
![](default/dnd-none.png "dnd-none")
![](default/dnd-copy.png "dnd-copy")
![](default/dnd-move.png "dnd-move")
![](default/dnd-link.png "dnd-link")
![](default/dnd-ask.png "dnd-ask")
![](default/xterm.png "xterm")
![](default/vertical-text.png "vertical-text")
![](default/color-picker.png "color-picker")
![](default/pencil.png "pencil")
![](default/plus.png "plus")
![](default/crossed_circle.png "crossed_circle")
![](default/question_arrow.png "question_arrow")
![](default/zoom-in.png "zoom-in")
![](default/zoom-out.png "zoom-out")
![](default/X_cursor.png "X_cursor")
![](default/pirate.png "pirate")
![](default/sb_v_double_arrow.png "sb_v_double_arrow")
![](default/sb_h_double_arrow.png "sb_h_double_arrow")
![](default/bd_double_arrow.png "bd_double_arrow")
![](default/fd_double_arrow.png "fd_double_arrow")
![](default/size_all.png "size_all")
![](default/sb_down_arrow.png "sb_down_arrow")
![](default/sb_left_arrow.png "sb_left_arrow")
![](default/sb_right_arrow.png "sb_right_arrow")
![](default/sb_up_arrow.png "sb_up_arrow")
![](default/top_left_corner.png "top_left_corner")
![](default/top_right_corner.png "top_right_corner")
![](default/bottom_left_corner.png "bottom_left_corner")
![](default/bottom_right_corner.png "bottom_right_corner")
![](default/top_side.png "top_side")
![](default/bottom_side.png "bottom_side")
![](default/left_side.png "left_side")
![](default/right_side.png "right_side")
![](default/ll_angle.png "ll_angle")
![](default/lr_angle.png "lr_angle")
![](default/ul_angle.png "ul_angle")
![](default/ur_angle.png "ur_angle")
![](default/top_tee.png "top_tee")
![](default/bottom_tee.png "bottom_tee")
![](default/left_tee.png "left_tee")
![](default/right_tee.png "right_tee")
![](default/cross.png "cross")
![](default/crosshair.png "crosshair")
![](default/tcross.png "tcross")
![](default/dot.png "dot")
![](default/dotbox.png "dotbox")

## Installing

1. Download or clone this repository to any location
2. From that directory:
3. Run automate.sh and follow the prompts. Files will be automatically generated, and copied to your ~/.icons directory.
4. Use Tweak-Tool and select "Numix-Cursors" as your cursor theme.

Enjoy!

## NOTE: 
if you wish to edit the files manually using inkscape (currently only working method) copy the files in /default to /src and make
your edits then run generate-only.sh to convert, generate, and install cursors.
