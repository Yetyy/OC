@echo off
setlocal enabledelayedexpansion

set /p directory=Please provide a directory name as the first parameter:
set "max_files=0"
set "max_dir="
for /d %%d in ("\\?\%directory%\*") do (
set "files_count=0"
for /f %%f in ('dir /b /a-d "%%d\*" 2^>nul ^| find /c /v ""') do set "files_count=%%f"
if !files_count! gtr !max_files! (
set "max_files=!files_count!"
set "max_dir=%%d"
)
)


if defined max_dir (
echo The subdirectory with the most number of files is: !max_dir!
echo It contains !max_files! files.
) else (
echo No subdirectories were found in the target directory.
)
pause