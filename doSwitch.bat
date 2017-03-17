DisplaySwitch.exe /external
timeout -t 5
TASKKILL /F /IM DisplaySwitch.exe

@REM This means Press any key to countienue.
timeout -t -1

DisplaySwitch.exe /internal
cmd