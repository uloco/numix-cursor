# Custom-Cursors
An automated, customizable X-11 Cursor theme!

This is version 0.9.5, we've got the script to automatically generate all the files you need and install them
for you. We're currently working on automating the theming process itself.

This theme is tested only under Ubuntu with the Unity desktop & Arch with the Gnome desktop, but should work fine under
other distros. You may just have to tweak where the files are installed to (or just use a symlink to link the two
directories, ie ln -S ~/.icons/Numix-Cursor [path-they-should-be-installed])

For the moment, the only size supported is 24px and the orange color is customizable.


Original .cursor and .svg images used were created, manually, by uloco using Inkscape and a text editor.

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

1. Download custom-cursors.tar.gz from the repo and extract to any directory
2. From that directory:
3. Run automate.sh and follow the prompts. Files will be automatically generated, and copied to your ~/.icons directory.
4. Use Tweak-Tool and select "custom-cursors" as your cursor theme.

Enjoy!

## NOTE: 
if you wish to edit the files manually using inkscape extract the src.tar.gz archive, make your edits then run generate-only.sh
