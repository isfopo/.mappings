# Custom mappings for mouse/keyboard controls across OS

- Windows using AutoHotKey
- Mac using Karabiner

## Setup

### Windows

1. Open Task Scheduler and select Create Basic Task. 
2. Name it and set the trigger to When I log on. 
3. For the action, select Start a program. 
4. In Program/script, enter: "C:\Program Files\AutoHotkey\AutoHotkey.exe"
    - In Add arguments, enter the full path to your script (e.g., "C:\Path\To\Your\Script.ahk").
    - Check Run with highest privileges if admin rights are required. 