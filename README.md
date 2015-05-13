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

![](previews/left_ptr.png "left_ptr")
![](previews/left_ptr_watch_01.png "left_ptr_watch")
![](previews/left_ptr_watch.gif "left_ptr_watch-animated")
![](previews/copy.png "copy")
![](previews/move.png "move")
![](previews/link.png "link")
![](previews/circle.png "circle")
![](previews/context-menu.png "context-menu")
![](previews/right_ptr.png "right_ptr")
![](previews/up-arrow.png "up-arrow")
![](previews/watch_01.png "watch")
![](previews/watch.gif "watch-animated")
![](previews/hand2.png "hand2")
![](previews/openhand.png "openhand")
![](previews/dnd-none.png "dnd-none")
![](previews/dnd-copy.png "dnd-copy")
![](previews/dnd-move.png "dnd-move")
![](previews/dnd-link.png "dnd-link")
![](previews/dnd-ask.png "dnd-ask")
![](previews/xterm.png "xterm")
![](previews/vertical-text.png "vertical-text")
![](previews/color-picker.png "color-picker")
![](previews/pencil.png "pencil")
![](previews/plus.png "plus")
![](previews/crossed_circle.png "crossed_circle")
![](previews/question_arrow.png "question_arrow")
![](previews/zoom-in.png "zoom-in")
![](previews/zoom-out.png "zoom-out")
![](previews/X_cursor.png "X_cursor")
![](previews/pirate.png "pirate")
![](previews/sb_v_double_arrow.png "sb_v_double_arrow")
![](previews/sb_h_double_arrow.png "sb_h_double_arrow")
![](previews/bd_double_arrow.png "bd_double_arrow")
![](previews/fd_double_arrow.png "fd_double_arrow")
![](previews/size_all.png "size_all")
![](previews/sb_down_arrow.png "sb_down_arrow")
![](previews/sb_left_arrow.png "sb_left_arrow")
![](previews/sb_right_arrow.png "sb_right_arrow")
![](previews/sb_up_arrow.png "sb_up_arrow")
![](previews/top_left_corner.png "top_left_corner")
![](previews/top_right_corner.png "top_right_corner")
![](previews/bottom_left_corner.png "bottom_left_corner")
![](previews/bottom_right_corner.png "bottom_right_corner")
![](previews/top_side.png "top_side")
![](previews/bottom_side.png "bottom_side")
![](previews/left_side.png "left_side")
![](previews/right_side.png "right_side")
![](previews/ll_angle.png "ll_angle")
![](previews/lr_angle.png "lr_angle")
![](previews/ul_angle.png "ul_angle")
![](previews/ur_angle.png "ur_angle")
![](previews/top_tee.png "top_tee")
![](previews/bottom_tee.png "bottom_tee")
![](previews/left_tee.png "left_tee")
![](previews/right_tee.png "right_tee")
![](previews/cross.png "cross")
![](previews/crosshair.png "crosshair")
![](previews/tcross.png "tcross")
![](previews/dot.png "dot")
![](previews/dotbox.png "dotbox")


## Installing

1. Download or clone this repository to any location
2. From that directory:
3. Run automate.sh and follow the prompts. Files will be automatically generated, and copied to your ~/.icons directory.
4. Use Tweak-Tool and select "Numix-Cursors" as your cursor theme.

Enjoy!

## NOTE: 
if you wish to edit the files manually using inkscape (currently only working method) copy the files in /default to /src and make
your edits then run generate-only.sh to convert, generate, and install cursors.
