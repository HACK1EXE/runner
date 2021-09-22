@echo off
wp id >wpid.txt
for /F %%i in (wpid.txt) do set wpid=%%i
echo wpid: %wpid%
wp run mpv --wid=%wpid% %cd%\wallpapers\GTR.mp4 --loop=inf --player-operation-mode=pseudo-gui --force-window=yes --no-audio
