@echo off

REM Tonton Jo - 2022
REM Join me on Youtube: https://www.youtube.com/c/tontonjo

REM Script to update all chocolatey installed application
REM Logs are written at root of c: drive: c:\choco_upgrade_log.txt

REM Versions:
REM Version 1.0: initial release
REM Version 1.1: add --no-progress to reduce logs size in case of update is found

REM Version 1.1

echo START at %DATE% - %TIME% -------------------------------------------- >> "c:\choco_upgrade_log.txt"
choco upgrade -y -r --no-progress all >> "c:\choco_upgrade_log.txt"
echo END ----------------------------------------------------------------- >> "c:\choco_upgrade_log.txt"
