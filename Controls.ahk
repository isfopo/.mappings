#Requires AutoHotkey v2.0

WheelLeft::Send "^#{Left}"
WheelRight::Send "^#{Right}"
MButton::Send "#{Tab}"

; Only apply in specific editors and terminals
#HotIf WinActive("ahk_exe Code.exe") || WinActive("ahk_exe zed.exe") || WinActive("ahk_exe notepad++.exe") || WinActive("ahk_exe devenv.exe") || WinActive("ahk_exe sublime_text.exe") || WinActive("ahk_exe Code - OSS.exe") || WinActive("ahk_exe WindowsTerminal.exe") || WinActive("ahk_exe Windows Terminal.exe") || WinActive("ahk_exe pwsh.exe") || WinActive("ahk_exe powershell.exe") || WinActive("ahk_exe cmd.exe") || WinActive("ahk_exe alacritty.exe") || WinActive("ahk_exe kitty.exe")

#InputLevel 1

*Volume_Up::
{
    if (GetKeyState("Alt", "P") || GetKeyState("Volume_Mute", "P")) {
        SendLevel 1
        Send("!{Up}")
    } else if (GetKeyState("Shift", "P")) {
        SendLevel 1
        Send("+{Up}")
    } else if (GetKeyState("Ctrl", "P")) {
        SendLevel 1
        Send("^{Up}")
    } else {
        SendLevel 1
        Send("{Volume_Up}")
    }
}

*Volume_Down::
{
    if (GetKeyState("Alt", "P") || GetKeyState("Volume_Mute", "P")) {
        SendLevel 1
        Send("!{Down}")
    } else if (GetKeyState("Shift", "P")) {
        SendLevel 1
        Send("+{Down}")
    } else if (GetKeyState("Ctrl", "P")) {
        SendLevel 1
        Send("^{Down}")
    } else {
        SendLevel 1
        Send("{Volume_Down}")
    }
}
