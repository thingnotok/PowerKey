#Requires AutoHotkey v2.0

; Space key handler
*Space::
{
    startTime := A_TickCount
    KeyWait "Space"
    if (A_TickCount - startTime < 150)
        Send "{Space}"
    return
}
        
; Save function (replacing Gosub)
Save() {
    ; Add your save functionality here
    Send "^s"  ; Default to Ctrl+S
}

Space & r::
{
    if GetKeyState("a", "P")
        Send "+{Up}"  ; Space+A+R = Shift+Up
    else
        Send "{Up}"   ; Space+R = Up
    return
}

Space & m::
{
    if GetKeyState("a", "P")
        Send "+{Down}"  ; Space+A+M = Shift+Down
    else
        Send "{Down}"   ; Space+M = Down
    return
}

Space & f::
{
    if GetKeyState("a", "P")
        Send "+{Left}"  ; Space+A+F = Shift+Left
    else
        Send "{Left}"   ; Space+F = Left
    return
}

Space & j::
{
    if GetKeyState("a", "P")
        Send "+{Right}"  ; Space+A+J = Shift+Right
    else
        Send "{Right}"   ; Space+J = Right
    return
}

Space & d::
{
    if GetKeyState("a", "P")
        Send "^+{Left}"  ; Space+A+D = Ctrl+Shift+Left
    else
        Send "^{Left}"   ; Space+D = Ctrl+Left
    return
}

Space & k::
{
    if GetKeyState("a", "P")
        Send "^+{Right}"  ; Space+A+K = Ctrl+Shift+Right
    else
        Send "^{Right}"   ; Space+K = Ctrl+Right
    return
}

Space & h::
{
    if GetKeyState("a", "P")
        Send "+{F10}"  ; Space+A+H = Shift+F10
    else
        Send "+{F10}"  ; Space+H = Shift+F10
    return
}

Space & g::
{
    Send "{Esc}"  ; Space+G = Escape
    return
}

Space & '::
{
    if GetKeyState("a", "P")
        Send "{Enter}"  ; Space+A+' = Enter
    else
        Send "{Enter}"  ; Space+' = Enter
    return
}

Space & s::
{
    if GetKeyState("a", "P")
        Send "+{Home}"  ; Space+A+S = Shift+Home
    else
        Send "{Home}"   ; Space+S = Home
    return
}

Space & l::
{
    if GetKeyState("a", "P")
        Send "+{End}"  ; Space+A+L = Shift+End
    else
        Send "{End}"   ; Space+L = End
    return
}

Space & w::
{
    if GetKeyState("a", "P")
        Send "^+{Home}"  ; Space+A+W = Ctrl+Shift+Home
    else
        Send "^{Home}"   ; Space+W = Ctrl+Home
    return
}

Space & .::
{
    if GetKeyState("a", "P")
        Send "^+{End}"  ; Space+A+. = Ctrl+Shift+End
    else
        Send "^{End}"   ; Space+. = Ctrl+End
    return
}

Space & t::
{
    if GetKeyState("a", "P")
        Send "+{PgUp}"  ; Space+A+T = Shift+Page Up
    else
        Send "{PgUp}"   ; Space+T = Page Up
    return
}

Space & e::
{
    if GetKeyState("a", "P")
        Send "^+{Up}"  ; Space+A+E = Ctrl+Shift+Up
    else
        Send "^{Up}"   ; Space+E = Ctrl+Up
    return
}

Space & n::
{
    if GetKeyState("a", "P")
        Send "+{PgDn}"  ; Space+A+N = Shift+Page Down
    else
        Send "{PgDn}"   ; Space+N = Page Down
    return
}

Space & ,::
{
    if GetKeyState("a", "P")
        Send "^+{Down}"  ; Space+A+, = Ctrl+Shift+Down
    else
        Send "^{Down}"   ; Space+, = Ctrl+Down
    return
}

; Formatting hotkeys - no A modifier needed
Space & b::Send "^b"  ; Space+B = Ctrl+B (Bold)
Space & i::Send "^i"  ; Space+I = Ctrl+I (Italic)
Space & u::Send "^u"  ; Space+U = Ctrl+U (Underline)

; Clipboard operations
Space & z::Send "^z"  ; Space+Z = Ctrl+Z (Undo)
Space & x::Send "^x"  ; Space+X = Ctrl+X (Cut)
Space & c::Send "^c"  ; Space+C = Ctrl+C (Copy)
Space & v::Send "^v"  ; Space+V = Ctrl+V (Paste)
Space & y::Send "^y"  ; Space+Y = Ctrl+Y (Redo)

; Tab and other navigation
Space & Tab::Send "{Tab}"  ; Space+Tab = Tab
Space & =::Send "^{WheelUp}"  ; Space+= = Ctrl+Wheel Up (Zoom in)
Space & -::Send "^{WheelDown}"  ; Space+- = Ctrl+Wheel Down (Zoom out)

; Tab and other navigation with A modifier
Space & [::Send "+{Tab}"  ; Space+[ = Shift+Tab
Space & ]::Send "+{Tab}"  ; Space+] = Shift+Tab

Space & BackSpace::
{
    if GetKeyState("a", "P")
        Send "{Delete}"  ; Space+A+Backspace = Delete
    else
        Send "{BackSpace}"  ; Space+Backspace = Backspace
    return
}

; Special keys
Space & /::
{
    if GetKeyState("a", "P")
        Send "^{Enter}"  ; Space+A+/ = Ctrl+Enter
    else
        Send "^/"  ; Space+/ = Ctrl+/ (Comment)
    return
}

Space & Enter::
{
    if GetKeyState("a", "P")
        Send "+{Enter}"  ; Space+A+Enter = Shift+Enter
    else
        Send "+{Enter}"  ; Space+Enter = Shift+Enter
    return
}

Space & \::Send "+\"  ; Space+\ = Shift+\
Space & 9::
{
    if GetKeyState("a", "P")
        Send "+{WheelUp}"  ; Space+A+9 = Shift+Wheel Up
    else
        Send "+9"  ; Space+9 = Shift+9
    return
}

Space & 0::
{
    if GetKeyState("a", "P")
        Send "+{WheelDown}"  ; Space+A+0 = Shift+Wheel Down
    else
        Send "+0"  ; Space+0 = Shift+0
    return
}

; Number keys
Space & 1::Send "+1"  ; Space+1 = Shift+1
Space & 2::Send "+2"  ; Space+2 = Shift+2
Space & 3::Send "+3"  ; Space+3 = Shift+3
Space & 4::Send "+4"  ; Space+4 = Shift+4
Space & 5::Send "+5"  ; Space+5 = Shift+5
Space & 6::Send "+6"  ; Space+6 = Shift+6
Space & 7::Send "+7"  ; Space+7 = Shift+7
Space & 8::Send "+8"  ; Space+8 = Shift+8

; Save function
Space & q::Save()  ; Space+Q = Save

; Backtick
Space & `::Send "``"  ; Space+` = `

; Space+A should do nothing by itself
Space & a::return
Space & `;::return
Space & LShift::BackSpace
Space & RShift::Delete