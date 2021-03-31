dim wshshell

Set wshshell = WScript.CreateObject("WScript.Shell")

wshshell.run """C:\Program Files\Mozilla Firefox\firefox.exe""www.google.com",1,False

WScript.Sleep 800

wshshell.SendKeys"{ENTER}"

Set wshshell = Nothing

wscript.quit
