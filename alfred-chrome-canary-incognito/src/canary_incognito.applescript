on alfred_script(q)

    tell application "Google Chrome Canary"
        activate

        tell application "System Events"
            keystroke "n" using {command down, shift down}
        end tell
    end tell

end alfred_script
