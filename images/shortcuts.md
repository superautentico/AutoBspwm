# WM Independent Hotkeys

## Terminal Emulator
- **Shortcut**: `Super + Return`
  - **Function**: Launches Kitty terminal (`/usr/bin/kitty`)

## Program Launcher
- **Shortcut**: `Super + d`
  - **Function**: Launches Rofi program launcher (`/home/$USER/.config/rofi/launchers/type-6/launcher.sh`)

## Reload Sxhkd Configuration
- **Shortcut**: `Super + Escape`
  - **Function**: Reloads sxhkd configuration files (`pkill -USR1 -x sxhkd`)

---

# BSPWM Hotkeys

## Quit/Restart BSPWM
- **Shortcut**: `Super + Alt + {q,r}`
  - **Function**: Quit or restart BSPWM (`bspc {quit,wm -r}`)

## Close and Kill
- **Shortcut**: `Super + {_,Shift + }w`
  - **Function**: Close or kill a window (`bspc node -{c,k}`)

## Toggle Layout
- **Shortcut**: `Super + m`
  - **Function**: Alternate between tiled and monocle layout (`bspc desktop -l next`)

## Send Newest Marked Node
- **Shortcut**: `Super + y`
  - **Function**: Send the newest marked node to the newest preselected node (`bspc node newest.marked.local -n newest.!automatic.local`)

## Swap Nodes
- **Shortcut**: `Super + g`
  - **Function**: Swap current node with the biggest window (`bspc node -s biggest.window`)

---

# State/Flags

## Set Window State
- **Shortcut**: `Super + {t,Shift + t,s,f}`
  - **Function**: Set window state to tiled, pseudo-tiled, floating, or fullscreen (`bspc node -t {tiled,pseudo_tiled,floating,fullscreen}`)

## Set Node Flags
- **Shortcut**: `Super + Ctrl + {m,x,y,z}`
  - **Function**: Set node flags for marked, locked, sticky, or private (`bspc node -g {marked,locked,sticky,private}`)

---

# Focus/Swap

## Focus in Direction
- **Shortcut**: `Super + {_,Shift + }{Left,Down,Up,Right}`
  - **Function**: Focus or swap node in specified direction (`bspc node -{f,s} {west,south,north,east}`)

## Focus for Path Jump
- **Shortcut**: `Super + {p,b,comma,period}`
  - **Function**: Focus node based on path (`bspc node -f @{parent,brother,first,second}`)

## Focus Next/Previous Window
- **Shortcut**: `Super + {_,Shift + }c`
  - **Function**: Focus next or previous window (`bspc node -f {next,prev}.local.!hidden.window`)

## Focus Next/Previous Desktop
- **Shortcut**: `Super + bracket{left,right}`
  - **Function**: Focus next or previous desktop (`bspc desktop -f {prev,next}.local`)

## Focus Last Node/Desktop
- **Shortcut**: `Super + {grave,Tab}`
  - **Function**: Focus last node or desktop (`bspc {node,desktop} -f last`)

## Focus Older/Newer Node
- **Shortcut**: `Super + {o,i}`
  - **Function**: Focus older or newer node in history (`bspc wm -h off; bspc node {older,newer} -f; bspc wm -h on`)

## Focus or Send to Desktop
- **Shortcut**: `Super + {_,Shift + }{1-9,0}`
  - **Function**: Focus or send to specified desktop (`bspc {desktop -f,node -d} '^{1-9,10}'`)

---

# Preselect

## Preselect Direction
- **Shortcut**: `Super + Ctrl + Alt + {Left,Down,Up,Right}`
  - **Function**: Preselect direction for node (`bspc node -p {west,south,north,east}`)

## Preselect Ratio
- **Shortcut**: `Super + Ctrl + {1-9}`
  - **Function**: Preselect ratio for node (`bspc node -o 0.{1-9}`)

## Cancel Node Preselection
- **Shortcut**: `Super + Ctrl + Alt + space`
  - **Function**: Cancel preselection for focused node (`bspc node -p cancel`)

## Cancel Desktop Preselection
- **Shortcut**: `Super + Ctrl + Shift + space`
  - **Function**: Cancel preselection for focused desktop (`bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel`)

---

# Move/Resize

## Move a Floating Window
- **Shortcut**: `Super + Ctrl + {Left,Down,Up,Right}`
  - **Function**: Move floating window (`bspc node -v {-20 0,0 20,0 -20,20 0}`)

## Custom Resize Script
- **Shortcut**: `Alt + Super + {Left,Down,Up,Right}`
  - **Function**: Execute custom resize script (`~/.config/bspwm/scripts/bspwm_resize {west,south,north,east}`)

---

# Applications

## Open Firefox
- **Shortcut**: `Super + Shift + f`
  - **Function**: Launch Firefox (`/usr/bin/firefox`)

## Open Burp Suite
- **Shortcut**: `Super + Shift + b`
  - **Function**: Launch Burp Suite (`/usr/bin/burpsuite`)

## Open Visual Studio Code
- **Shortcut**: `Super + Shift + m`
  - **Function**: Launch Visual Studio Code (`/usr/bin/code`)

---

# Miscellaneous

## Screen Lock
- **Shortcut**: `Ctrl + Alt + l`
  - **Function**: Lock screen (`/usr/bin/i3lock-fancy`)

## Volume Control
- **Increase Volume**: `Ctrl + Shift + Up`
  - **Function**: Increase volume by 5 (`pamixer --increase 5`)
- **Decrease Volume**: `Ctrl + Shift + Down`
  - **Function**: Decrease volume by 5 (`pamixer --decrease 5`)
- **Mute/Restore Volume**: `Ctrl + Shift + m`
  - **Function**: Toggle mute/restore (`pamixer --toggle-mute`)

## Screenshots
- **Full Screenshot**: `@Print`
  - **Function**: Take a full screenshot using Flameshot (`flameshot full`)
- **Screenshot GUI**: `Ctrl + @Print`
  - **Function**: Open Flameshot GUI for screenshot selection (`flameshot gui`)
