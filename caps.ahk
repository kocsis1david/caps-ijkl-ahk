#Requires AutoHotkey v2.0

SetCapsLockState "AlwaysOff"

modes := ["default", "kam"]
mode := "default"

SwitchMode(m) {
    global mode := m
    ; TrayTip "switched to mode `"" mode "`""
}

CapsLock & Tab::{
    index := -1

    For i, val in modes {
        If (val = mode) {
            index := i
        }
    }

    index := Mod(index, modes.Length) + 1
    SwitchMode(modes[index])
}

#HotIf mode = "default"
CapsLock & i::Up
CapsLock & k::Down
CapsLock & j::Left
CapsLock & l::Right
CapsLock & Backspace::Delete 
CapsLock & u::Home
CapsLock & o::End
CapsLock & p::PgUp
CapsLock & `;::PgDn
#HotIf

#HotIf mode = "kam"
w::Up
s::Down
a::Left
d::Right
q::-
e::+
z::s
x::l
c::h
r::9
f::8
CapsLock & Space::x
#HotIf

CapsLock & 1::F1
CapsLock & 2::F3
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 6::F6
CapsLock & 7::F7
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & -::F11
CapsLock & =::F12
