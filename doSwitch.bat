DisplaySwitch.exe /external
timeout -t 5

@REM The latest (Windows 10 1607) version Windows will try to
@REM detect display status, if 2nd is not exist,
@REM it will fix it back to main display rather than keep it.
@REM Kill the process before switch back can prevent this.
TASKKILL /F /IM DisplaySwitch.exe

@REM Keep cmd window exist(in foreground) to prevent a program
@REM capture input focus and ignore Win+P shortcut(mostly).
cmd
