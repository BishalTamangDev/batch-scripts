@echo off
setlocal EnableDelayedExpansion

rem Ask for the current extension
set /p oldExt=Enter the current extension (without dot): 

rem Ask for the new extension
set /p newExt=Enter the new extension (without dot): 

rem Loop through all files with the old extension
for %%F in (*.%oldExt%) do (
    ren "%%F" "%%~nF.%newExt%"
)

echo All .%oldExt% files have been changed to .%newExt%
exit /b
