## Configuration introduction:
There are two modes, loose mode (default) and strict mode
Strict mode can only use some common shortcuts. Generally, after entering tui applications such as vim, you can switch to strict mode to avoid shortcut key conflicts
Loose mode allows for some additional Ctrl and Alt binding shortcuts

https://github.com/DreamMaoMao/fantastic-tmux/assets/30348075/2a51302a-75d9-4ec0-a343-414d880535f6

## Universal shortcut keys
### prefix-key
Alt-u

### Switch between strict mode and loose mode
Ctrl u

### window
| prefix | prefix |
|  ----  | ----  |
| Create win |prefix-key+ m
| Destroy win |prefix-key+ n
| Focus on the previous win |prefix-key+ y
| Focus on the latter win |prefix-key+ u
| Switch to win1 |prefix-key+ 1
| Switch to win2 |prefix-key+ 2
| Switch to win3 |prefix-key+ 3
| Switch to win4 |prefix-key+ 4
| Switch to win5 |prefix-key+ 5
| Switch to win6 |prefix-key+ 6
| Switch to win7 |prefix-key+ 7
| Switch to win8 |prefix-key+ 8
| Switch to win9 |prefix-key+ 9
| rename win      |prefix-key+ ,
| Moves win to a specific location | prefix-key+ .

### pane
| prefix | prefix |
|  ----  | ----  |
|pane moves to window 1 |prefix-key+ shift-1
|pane moves to window 2 |prefix-key+ shift-2
|pane moves to window 3 |prefix-key+ shift-3
|pane moves to window 4 |prefix-key+ shift-4
|pane moves to window 5 |prefix-key+ shift-5
|pane moves to window 6 |prefix-key+ shift-6
|pane moves to window 7 |prefix-key+ shift-7
|pane moves to window 8 |prefix-key+ shift-8
|pane moves to window 9 |prefix-key+ shift-9
| Split pane to the right |prefix-key+ p
| Split-down pane |prefix-key+ o
| Focus on the left pane |prefix-key+ h
| Focus on the right pane |prefix-key+ l
| Focus on the up pane |prefix-key+ k
| Focus on the down pane |prefix-key+ j
| Full-screen pane |prefix-key+ a
| Deletes pane |prefix-key+ i
| pane input sync toggle |prefix-key+ s
| Select a pane and place it right to the right of the current pane | prefix-key+ P
| Select a pane and place it down to the current pane | prefix-key+ o
| Places pane in a new window |prefix-key+ b
| focus a pane by show number | prefix-key+ q

### Positioning
| prefix | prefix |
|  ----  | ----  |
| search pane by input a fuzzy name|prefix-key+ f
| global preview to select pane |prefix-key+ w

### Configuration
| prefix | prefix |
|  ----  | ----  |
| reload config |prefix-key+ r
| detach the session |prefix-key+ d

### Copy and paste
| prefix | prefix |
|  ----  | ----  |
|prefix-key+ [  | enter copy mode
| Direction key /hjkl/HJKL | Move the cursor in copy mode
|space | enter the visual mode
| Direction key /hjkl/HJKL | move cursor to select
|enter | Confirm the selection
|prefix-key+]/Ctrl + p | paste 
`Tip: Hold down the shift key to do regular copy and paste with the mouse`

### Edit the entire terminal text with $EDITOR
This feature allows you to edit and copy the content on the current terminal using any tui editor, such as nvim.
The EDITOR is determined by the '$EDITOR' environment variable
| prefix | prefix |
|  ----  | ----  |
| Enter | prefix-key e

## Loose mode can use shortcut keys

### pane
| prefix | prefix |
|  ----  | ----  |
|alt + h/j/k/l | Toggle pane focus
|C-x | Switches the layout
|alt + ;          | Swap Windows clockwise
|alt + '            | Swap the window counterclockwise

## pane size adjustment
| prefix | prefix |
|  ----  | ----  |
| up |C-k
| down |C-j
| left |C-n
| right |C-o
| maximize |C-f
`Mouse drag can also be adjusted`

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
Lists all buffer 'prefix-key + ='
Check and press enter to paste it in
Example Clear buffer 'prefix-key + -'

## session save and restore
prefix-key + C-s saves the Settings
prefix-key + C-r is restored
