: #!/bin/bash
:; source ./linuxInstall.sh "$*"
:; exit
@echo off

SET DIR=%~dp0%
::run installers
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%chocoInstall.ps1' %*" && %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%DIR%winInstall.ps1 ""%*""""' -Verb RunAs}"
