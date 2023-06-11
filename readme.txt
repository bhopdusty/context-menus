iex(irm raw.githubusercontent.com/bhopdusty/context-menus/main/context-menus.ps1);

options: tools; file-explorer; cru-toggle; cru; obs-portable; obs; adobe; youtube-music; apple-music; spotify; discord; edge; chrome; firefox; game-launchers; bufferbloat-toggle; powerplan-toggle; overclock-toggle

To Customize Separators and Positions of Apps, Open Regedit and Go to

HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\

Delete "SeparatorBefore" String inside Keys to Remove Separator Before the Apps

Rename the Key and Add/Remove Spaces to Position it Up/Down (You'll Have to Do The Same in .bat Files For Toggles to Work Properly)
