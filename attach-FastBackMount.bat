@echo off 
rem tasklist /FI "IMAGENAME eq FastBackServer.exe"
:MyLooper
net start "FastBack Mount"
set "PID="
for /f "tokens=2" %%A in ('tasklist ^| findstr /i "FastBackMount.exe" 2^>NUL') do @Set "PID=%%A"
if defined PID Echo FastBackMount.exe has PID(s) %PID:~1%

if defined PID "C:\Program Files\Windows Kits\10\Debuggers\x86\windbg.exe" -WF C:\windbg_custom.WEW -p %PID%
@echo press enter to reattach
@pause
GOTO MyLooper
