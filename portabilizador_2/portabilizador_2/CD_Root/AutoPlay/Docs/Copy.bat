@echo off
title Copy
:ini
cls
echo --------------------------------------------------------------------------------
echo.
echo                 "##\      ##\                               "
echo                 "###\    ### |                              "
echo                 "####\  #### | ######\  #######\  ##\   ##\ "
echo                 "##\##\## ## |##  __##\ ##  __##\ ## |  ## |"
echo                 "## \###  ## |######## |## |  ## |## |  ## |"
echo                 "## |\#  /## |##   ____|## |  ## |## |  ## |"
echo                 "## | \_/ ## |\#######\ ## |  ## |\######  |"
echo                 "\__|     \__| \_______|\__|  \__| \______/ "
echo.
echo --------------------------------------------------------------------------------
echo. 
echo          Elige la arquitectura del SO x86 (32 bits) o x64 (64 bits)
echo.
set /p inicio="32 o 64 bits?: "


if %inicio%==64 (goto 64) else if %inicio%==32 (goto 32) else (goto ini) 

:64
copy carpeta.exe C:\Windows\System32
copy carpeta.exe C:\Windows\SysWOW64
exit

:32
copy carpeta.exe C:\Windows\System32
exit