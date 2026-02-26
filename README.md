# smpasteimage

**Supermemo Paste Image** is an [AutoHotkey](https://www.autohotkey.com/) script to paste images to [Supermemo](https://super-memory.com/english/down.htm) without using [image components](https://supermemopedia.com/wiki/Image_component) and without sending the image to the collection temp folder. The image will stay permanent until manually deleted.

By pressing F2 (or a custom hotkey) you can paste images directly to the [element](https://help.supermemo.org/wiki/Glossary:Element).

**Requires Clip and AHK v1**

If your AHK is v2, a message box will pop up asking you if you want to install v1 automatically.

**Script Cons**: images are stored in a folder called "userImages" within the elements folder of the collection. If you delete the image from the element, or if you delete the element itself, it will not be deleted from the folder, so you will have to delete it manually.

Tested in Windows 11, Supermemo 19, AHK v1.1.37.02

## How to use

1. Download both .ahk files to your computer
2. Edit the file "smpasteimage.ahk" and change the supermemo.ini path in the `IniPath := "C:\SuperMemo\bin\supermemo.ini"` line to the path of your supermemo.ini
3. If you use another version of supermemo, edit the file and change the `sm19.exe` to the name of your supermemo executable
4. Optionally, change the hotkey to your preferred one by changing the line `F2::`
5. Run the "smpasteimage.ahk", copy an image and paste it to supermemo by pressing F2 (or your custom hotkey)