on iTermIsRunning()
    tell application "System Events"
        return (count of (application processes whose name is "iTerm2")) is not 0
    end tell
end iTermIsRunning

on alfred_script(q)
    if iTermIsRunning() then
        null

    else
        tell application "iTerm"
			activate
            delay 0.5
                tell application "System Events"
                    keystroke space using option down
                end tell
        end tell
    end if
end alfred_script
