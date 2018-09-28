@echo OFF
echo.
echo 			Running Windows %WINVER%
echo.
echo 			Welcome %username%
echo.

echo.
:mainmenu
color 1E
echo 		----------------------------------
echo 		Scripted by Satyaveer...	 
echo.
echo 		satyaveer000@gmail.com 		 
echo.
echo 		**********************************
echo 		*		:Menu:		 *
echo 		**********************************
echo 		*	Clean garbage.  (1)	 *
echo 		*	Clean Cache.    (2)	 *
echo 		*	Exit.           (3)	 *
echo 		**********************************
echo.

set /p men1=Enter:
if %men1% == 1 goto CLEAN
if %men1% == 2 goto flash cookies
if %men1% == 3 goto Exit
goto mainmenu

:CLEAN
title Clean temporary files:
REM Cleanup cookies for current user
del "%USERPROFILE%"\cookies\*.txt
 
REM Cleanup files for Windows 
REM Cleanup temp directory for current user
del /s /f /q "%USERPROFILE%"\locals~1\temp\*
rmdir /s /q "%USERPROFILE%"\locals~1\temp
mkdir "%USERPROFILE%"\locals~1\Temp
 
REM Cleanup temporary internet file directories for current user
del /s /f /q "%USERPROFILE%"\locals~1\tempor~1\*
del /s /f /q /a:s "%USERPROFILE%"\locals~1\tempor~1\*
del /s /f /q /a:h "%USERPROFILE%"\locals~1\tempor~1\*
del /s /f /q /a:r "%USERPROFILE%"\locals~1\tempor~1\*
rmdir /s /q "%USERPROFILE%"\locals~1\tempor~1
 
REM Cleanup history for current user
del /s /f /q "%USERPROFILE%"\locals~1\history\*
 
REM Cleanup Windows prefetch
del /s /f /q "%SystemRoot%"\prefetch\*
 
REM Cleanup Windows minidump
del /s /f /q "%SystemRoot%"\Minidump\*
 
REM Cleanup Windows temp
del /s /f /q "%SystemRoot%"\temp\*
rmdir /s /q "%SystemRoot%"\temp\
mkdir "%SystemRoot%"\Temp
 
REM Cleanup recent shortcuts for current user
del /s /f /q "%USERPROFILE%"\recent\*
 
REM Cleanup environment varable set temp storage
del /s /f /q "%TEMP%"
 
REM Cleanup environment varable set tmp storage
del /s /f /q "%TMP%"
 
REM Cleanup c:\temp
del /s /f /q c:\temp\*
rmdir /s /q c:\temp\
mkdir c:\Temp
 
REM Cleanup Recycle Bin storage areas
del /s /f /q c:\Recycled\*
del /s /f /q c:\Recycler\*
Echo off
color 89
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls
goto mainmenu

::So far this appers to be working. Do no edit it.

title Clear all cookies:
pause
:flash cookies
set FlashCookies=C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1

del /q /s /f "%FlashCookies%"
rd /s /q "%FlashCookies%"

:firefox
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite

:opera
set DataDir=C:\Users\%USERNAME%\AppData\Local\Opera\Opera
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Opera\Opera

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

del /q /s /f "%DataDir2%"
rd /s /q "%DataDir2%"

:safari
set DataDir=C:\Users\%USERNAME%\AppData\Local\Applec~1\Safari
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Applec~1\Safari

del /q /s /f "%DataDir%\History"
rd /s /q "%DataDir%\History"

del /q /s /f "%DataDir%\Cache.db"
del /q /s /f "%DataDir%\WebpageIcons.db"

del /q /s /f "%DataDir2%"
rd /s /q "%DataDir2%"

:internet explore
set DataDir=C:\Users\%USERNAME%\AppData\Local\Microsoft\Intern~1

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

set History=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\History

del /q /s /f "%History%"
rd /s /q "%History%"

set IETemp=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Tempor~1

del /q /s /f "%IETemp%"
rd /s /q "%IETemp%"

set Cookies=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Cookies

del /q /s /f "%Cookies%"
rd /s /q "%Cookies%"

C:\bin\regdelete.exe HKEY_CURRENT_USER "Software\Microsoft\Internet Explorer\TypedURLs"

:chrome
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data

del /q /s /f "%ChromeDir%"
rd /s /q "%ChromeDir%"
cls 
goto mainmenu

