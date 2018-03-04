tell application "System Events"
    set myFrontMost to name of first item of (processes whose frontmost is true)
end tell

property theURL : ""

if myFrontMost is "Google Chrome" then
    tell application "Google Chrome"
        set theURL to URL of active tab of window 1
    end tell
    tell application "System Events"
        do shell script "Open -a Firefox " & theURL
    end tell
else if myFrontMost is "Firefox" then
    tell application "Firefox" to activate
    tell application "System Events"
        keystroke "l" using command down
        keystroke "c" using command down
        delay 0.1
    end tell
    set theURL to the clipboard
    tell application "Google Chrome"
        activate
        set myTab to make new tab at end of tabs of window 1
        set URL of myTab to theURL
    end tell
end if
