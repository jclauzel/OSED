@echo off
rem /FI "IMAGENAME eq savant.exe"
:MyLooper

set "PID="
for /f "tokens=2" %%A in ('tasklist ^| findstr /i "Savant.exe" 2^>NUL') do @Set "PID=!PID!,%%A"
if not defined PID Echo starting Savant.exe && start C:\Savant\Savant.exe
timeout /t 2
echo trying to collect PID...

set "PID2="
for /f "tokens=2" %%B in ('tasklist ^| findstr /i "Savant.exe" 2^>NUL') do @Set "PID2=%%B"
if defined PID2 Echo Savant.exe has PID(s) %PID2:~1%

if defined PID2 "C:\Program Files\Windows Kits\10\Debuggers\x86\windbg.exe" -WF C:\windbg_custom.WEW -p %PID2%
@echo press enter to reattach
@pause
GOTO MyLooper
