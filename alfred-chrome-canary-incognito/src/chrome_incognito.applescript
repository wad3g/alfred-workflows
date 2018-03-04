on alfred_script(q)

    tell application "Google Chrome"
        activate

        tell application "System Events"
            keystroke "n" using {command down, shift down}
        end tell
    end tell

end alfred_script
