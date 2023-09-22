@echo off

setlocal enabledelayedexpansion

set /p directory=Please provide a directory name as the first parameter:

set "tmpFilesCount=0"

for /r "%directory%" %%f in (*.tmp) do (
echo %%f
set /a tmpFilesCount+=1

)
echo Total temporary files found: !tmpFilesCount!

endlocal
pause