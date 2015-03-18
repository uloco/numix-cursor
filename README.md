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

![](src/left_ptr.png "left_ptr")
![](src/left_ptr_watch_01.png "left_ptr_watch")
![](animation/left_ptr_watch.gif "left_ptr_watch-animated")
![](src/copy.png "copy")
![](src/move.png "move")
![](src/link.png "link")
![](src/circle.png "circle")
![](src/context-menu.png "context-menu")
![](src/right_ptr.png "right_ptr")
![](src/up-arrow.png "up-arrow")
![](src/watch_01.png "watch")
![](animation/watch.gif "watch-animated")
![](src/hand2.png "hand2")
![](src/openhand.png "openhand")
![](src/dnd-none.png "dnd-none")
![](src/dnd-copy.png "dnd-copy")
![](src/dnd-move.png "dnd-move")
![](src/dnd-link.png "dnd-link")
![](src/dnd-ask.png "dnd-ask")
![](src/xterm.png "xterm")
![](src/vertical-text.png "vertical-text")
![](src/color-picker.png "color-picker")
![](src/pencil.png "pencil")
![](src/plus.png "plus")
![](src/crossed_circle.png "crossed_circle")
![](src/question_arrow.png "question_arrow")
![](src/zoom-in.png "zoom-in")
![](src/zoom-out.png "zoom-out")
![](src/X_cursor.png "X_cursor")
![](src/pirate.png "pirate")
![](src/sb_v_double_arrow.png "sb_v_double_arrow")
![](src/sb_h_double_arrow.png "sb_h_double_arrow")
![](src/bd_double_arrow.png "bd_double_arrow")
![](src/fd_double_arrow.png "fd_double_arrow")
![](src/size_all.png "size_all")
![](src/sb_down_arrow.png "sb_down_arrow")
![](src/sb_left_arrow.png "sb_left_arrow")
![](src/sb_right_arrow.png "sb_right_arrow")
![](src/sb_up_arrow.png "sb_up_arrow")
![](src/top_left_corner.png "top_left_corner")
![](src/top_right_corner.png "top_right_corner")
![](src/bottom_left_corner.png "bottom_left_corner")
![](src/bottom_right_corner.png "bottom_right_corner")
![](src/top_side.png "top_side")
![](src/bottom_side.png "bottom_side")
![](src/left_side.png "left_side")
![](src/right_side.png "right_side")
![](src/ll_angle.png "ll_angle")
![](src/lr_angle.png "lr_angle")
![](src/ul_angle.png "ul_angle")
![](src/ur_angle.png "ur_angle")
![](src/top_tee.png "top_tee")
![](src/bottom_tee.png "bottom_tee")
![](src/left_tee.png "left_tee")
![](src/right_tee.png "right_tee")
![](src/cross.png "cross")
![](src/crosshair.png "crosshair")
![](src/tcross.png "tcross")
![](src/dot.png "dot")
![](src/dotbox.png "dotbox")

## Installing

1. Download or clone this repository to any location
2. From that directory:
3. run `sudo cp -rfP theme/Numix-Cursor/ /usr/share/icons/`
3. run `sudo update-alternatives --install /usr/share/icons/default/index.theme x-cursor-theme /usr/share/icons/Numix-Cursor/cursor.theme`
4. run `sudo update-alternatives --config x-cursor-theme` and choose the numix theme
5. open gnome-tweak-tool or unity-tweak-tool and choose `Numix-Cursor` as mouse cursor theme
6. restart X-server

Enjoy!