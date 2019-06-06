#!/bin/bash

# open sublime text, open thesis folder, open main.tex
subl .
subl main.tex

# split to 2 panes
osascript <<EOF
tell application "Sublime Text"
    tell application "System Events"
        keystroke "2" using {option down, command down}
    end tell
end tell
EOF

# make fullscreen
osascript <<EOF
tell application "Sublime Text"
    tell application "System Events"
        keystroke "f" using {command down, control down}
    end tell
end tell
EOF

# open PDF in full screen
open main.pdf 

osascript <<EOF
tell application "Preview"
    activate
    tell application "System Events"
        keystroke "f" using {command down, control down}
    end tell
end tell
EOF

# old command:  subl --command toggle_full_screen .
