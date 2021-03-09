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

