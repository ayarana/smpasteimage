# smpasteimage

**Supermemo Paste Image** is an AutoHotkey script to paste images to Supermemo without using image components.

By pressing F2 (or a custom hotkey) you can paste images directly to the article or to your current component.

**Requires Clip and AHK v1**

If your AHK is v2, a message box will pop up asking you if you want to install v1 automatically.

**Script Cons**: images are stored in a folder called "userImages" within the elements folder of the collection. If you delete the image from the article, it'll not be deleted from the folder, so you will have to delete it manually.

Tested in Windows 11, Supermemo 19, AHK v1.1.37.02

## How to use

1. Download both .ahk files to your computer
2. Edit the file "smpasteimage.ahk" and change the supermemo.ini path to the path of your supermemo.ini
3. If you use another version of supermemo, edit the file and change the sm19.exe to the name of your supermemo executable
4. Optionally, change the hotkey to your preferred one by changing the line "F2::"
5. Run the "smpasteimage.ahk", copy an image and paste it to supermemo by pressing F2 (or your custom hotkey)