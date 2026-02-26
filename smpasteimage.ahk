; ahk script to paste images into SuperMemo without creating image components 
; https://github.com/ayarana/

#SingleInstance force
#NoEnv
#IfWinActive ahk_exe sm19.exe
#Include %A_LineFile%\..\Clip.ahk
DetectHiddenWindows On
SendMode Input

IniPath := "C:\SuperMemo\bin\supermemo.ini"

F2::
IniRead, collectionRoot, %IniPath%, Termination, Collection

if (collectionRoot = "") {
    MsgBox, "Collection not found"
    return
}

userImagesPath := collectionRoot . "\elements\userImages\"
if !FileExist(userImagesPath){
    FileCreateDir, %userImagesPath%
}

If !DllCall("IsClipboardFormatAvailable", "Uint", 2) {
    MsgBox, "No image found in clipboard"
    return
}

FormatTime, timestamp,, yyyyMMdd_HHmmss
fileName := "img_" . timestamp . ".png"
finalPath := userImagesPath . fileName

powershellCommand := "powershell -NoProfile -Command ""Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Clipboard]::GetImage().Save('" . finalPath . "', [System.Drawing.Imaging.ImageFormat]::Png)"""
RunWait, %powershellCommand%,, Hide

Loop, %finalPath%, 1
{
    ShortPath := A_LoopFileShortPath
}
absPath := StrReplace(ShortPath, "\", "/")

htmlTag := "<img src=""file:///" . absPath . """>"

Clip(htmlTag, True)

Sleep, 400
Send, ^+{1}
return



