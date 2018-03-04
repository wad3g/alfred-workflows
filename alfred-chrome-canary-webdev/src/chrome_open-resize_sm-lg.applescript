on alfred_script(q)

    tell application "Google Chrome"
      set theURL to URL of the active tab of window 1
      set the clipboard to theURL
    end tell

    tell application "Google Chrome"
        activate

            tell application "System Events"
            keystroke "n" using command down
            delay 0.1
            keystroke "v" using command down
            keystroke return
                delay 0.5
                keystroke "n" using command down
                delay 0.1
                keystroke "v" using command down 
                keystroke return
            end tell

        set the bounds of the first window to {0, 0, 320, 850}
        set the bounds of the second window to {450, 0, 1650, 850}
    end tell

end alfred_script
