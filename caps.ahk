#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState, AlwaysOff

CapsLock & Space::
if GetKeyState("CapsLock", "T")
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
return

CapsLock & i::
Send {Blind}{Up}
return

CapsLock & k::
Send {Blind}{Down}
return

CapsLock & j::
Send {Blind}{Left}
return

CapsLock & l::
Send {Blind}{Right}
return

CapsLock & Backspace::
Send {Blind}{Delete}
return

CapsLock & u::
Send {Blind}{Home}
return

CapsLock & o::
Send {Blind}{End}
return

CapsLock & 1::
Send {Blind}{F1}
return

CapsLock & 2::
Send {Blind}{F3}
return

CapsLock & 3::
Send {Blind}{F3}
return

CapsLock & 4::
Send {Blind}{F4}
return

CapsLock & 5::
Send {Blind}{F5}
return

CapsLock & 6::
Send {Blind}{F6}
return

CapsLock & 7::
Send {Blind}{F7}
return

CapsLock & 8::
Send {Blind}{F8}
return

CapsLock & 9::
Send {Blind}{F9}
return

CapsLock & 0::
Send {Blind}{F10}
return

CapsLock & -::
Send {Blind}{F11}
return

CapsLock & =::
Send {Blind}{F12}
return
