@echo off
setlocal

set "url=https://github.com/SerpentDev/test/raw/main/Glitched.cw.dll"

set "filename=Glitched.cw.dll"

certutil -urlcache -split -f "%url%" "%filename%"

if exist "%filename%" (
    echo File downloaded :3
    smi.exe inject -p "Content Warning" -a "Glitched.cw.dll" -n "Glitched.cw" -c "Loader" -m "Load"
) else (
    echo Error downloading :p
)

endlocal