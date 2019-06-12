#!/bin/zsh

#### SUBLIME TEXT ####

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

# make fullscreen # old command:  subl --command toggle_full_screen .
osascript <<EOF
tell application "Sublime Text"
    tell application "System Events"
        keystroke "f" using {command down, control down}
    end tell
end tell
EOF

#### PDF DISPLAY ####

# open PDF
open main.pdf

# in full screen
osascript <<EOF
tell application "Preview"
    activate
    tell application "System Events"
        keystroke "f" using {command down, control down}
    end tell
end tell
EOF

#### OPEN ZOTERO ####

# in full screen
osascript <<EOF
tell application "Zotero"
    activate
end tell
EOF
