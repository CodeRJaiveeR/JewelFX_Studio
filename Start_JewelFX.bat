
@echo off
cd "$HOME\Desktop\JewelFX_Studio"
start "" http://localhost:8000
py -m http.server 8000

pause
