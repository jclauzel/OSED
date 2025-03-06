@echo off 
rem /FI "IMAGENAME eq syncbrs.exe"
:MyLooper
net start "Sync Breeze Enterprise"
set "PID="
for /f "tokens=2" %%A in ('tasklist ^| findstr /i "syncbrs.exe" 2^>NUL') do @Set "PID=!PID!,%%A"
if defined PID Echo syncbrs.exe has PID(s) %PID:~1%

if defined PID "C:\Program Files\Windows Kits\10\Debuggers\x86\windbg.exe" -WF C:\windbg_custom.WEW -p %PID:~1%
@echo press enter to reattach
@pause
GOTO MyLooper