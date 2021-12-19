@echo off

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" /va /f

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Servers" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Servers"

cd %userprofile%\documents\

attrib Default.rdp -s -h

del Default.rdp

del /F /Q %APPDATA%\Microsoft\Windows\Recent\*

del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*

del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*

taskkill /F /im explorer.exe

start explorer.exe