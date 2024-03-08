## Configuration introduction:
There are two modes, loose mode (default) and strict mode
Strict mode can only use some common shortcuts. Generally, after entering tui applications such as vim, you can switch to strict mode to avoid shortcut key conflicts
Loose mode allows for some additional Ctrl and Alt binding shortcuts

## Universal shortcut keys
### Main key leader
Alt-u

### Switch between strict mode and loose mode
Ctrl u

### window
| prefix | prefix |
|  ----  | ----  |
| Create win |leader+ m
| Destroy win |leader+ n
| Focus on previous win |leader+ y
| Focus on the latter win |leader+ u
| Switch to win1 |leader+ 1
| Switch to win2 |leader+ 2
| Switch to win3 |leader+ 3
| Switch to win4 |leader+ 4
| Switch to win5 |leader+ 5
| Switch to win6 |leader+ 6
| Switch to win7 |leader+ 7
| Switch to win8 |leader+ 8
| Switch to win9 |leader+ 9
| Rename win |leader+,
| Move win to a specific location |leader+.

### pane
| prefix | prefix |
|  ----  | ----  |
|pane moves to window 1 |leader+ shift-1
|pane moves to window 2 |leader+ shift-2
|pane moves to window 3 |leader+ shift-3
|pane moves to window 4 |leader+ shift-4
|pane moves to window 5 |leader+ shift-5
|pane moves to window 6 |leader+ shift-6
|pane moves to window 7 |leader+ shift-7
|pane moves to window 8 |leader+ shift-8
|pane moves to window 9 |leader+ shift-9
| Split the pane to the right |leader+ p
| Split pane down |leader+ o
| Focus on the left pane |leader+ h
| Focus on the right pane |leader+ l
| Focus on top pane |leader+ k
| Focus lower pane |leader+ j
| Full screen pane |leader+ a
| Deletes the pane |leader+ i
|pane enter |leader+ s simultaneously
| Global Select a pane to the right of the current pane |leader+ P
| Global Select a pane and place it below the current pane |leader+ o
| Put pane in new window |leader+ b
| Jump to a specific number pane |leader+ q

### Positioning
| prefix | prefix |
|  ----  | ----  |
| Fuzzy Name Lookup pane |leader+ f
| Global Preview Select pane |leader+ w

### Configuration
| prefix | prefix |
|  ----  | ----  |
| Overloaded |leader+ r
| suspends the session |leader+ d

### Copy and paste
| prefix | prefix |
|  ----  | ----  |
|leader+ [|] Enter the replication mode
| Direction key /hjkl/HJKL | Move the cursor
|space | Go to select mode
| Press the direction button /hjkl/HJKL | to move and select
|enter | Confirm the selection
|leader+]/Ctrl + p | Paste
'Tip: Hold down the shift key to do regular copy and paste with the mouse'

### Edit the entire terminal text with $EDITOR
This feature allows you to edit and copy the content on the current terminal using any tui editor, such as nvim.
The EDITOR is determined by the '$EDITOR' environment variable
| prefix | prefix |
|  ----  | ----  |
| Go to | leader e

## Loose mode can use shortcut keys

### pane
| prefix | prefix |
|  ----  | ----  |
|alt + h/j/k/l | Toggle pane focus
|C-x | Switches the layout
|alt + ;          | Switch Windows clockwise
|alt + '| Swap the window counterclockwise

## pane size adjustment
| prefix | prefix |
|  ----  | ----  |
| is at |C-k
| |C-j
| left |C-h
| right |C-l
| maximize |C-f
'Mouse drag can also be adjusted'

### window
| prefix | prefix |
|  ----  | ----  |
|alt + n | Creates a new window
|alt + m | Close the window
|ctlr + h | Switch to the left window
|ctrl + l | Switch to the right window
|Alt + = | Moves the window to the right
|Alt + -| Moves the window to the left


## tmux Common commands
| prefix | prefix |
|  ----  | ----  |
|tmux | Creates a new session
|tmux new -s <session-name> | Creates a session with the specified name
|tmux ls | Displays all sessions
|tmux at | Connects to the latest session
|tmux rent-session <new-name> | renames the most recent session
|tmux attach -t <session-name> | Connects to the specified name session
|tmux rent-session -t <old-name> <new-name> | renames the specified session
|tmux kill-session -t <session-name> | Kills a specified session
|tmux switch -t <session-name> | Switches to the specified session
|tmux kill-server | Kill all and restart


## buffer
Each copy mode copies something in a separate buffer
Open the editor
Lists all buffers' leader + = '
Check and press enter to paste it in
Clear buffer 'leader + -'

## session save and restore
leader + C-s Save
The leader + C-r recovers