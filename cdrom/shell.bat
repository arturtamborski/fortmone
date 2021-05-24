@echo off


echo removing contents and directory C:\cdrom\
rmdir C:\cdrom\ /S /q 2>nul
echo.
echo.

echo copying contents of the CD to C:\cdrom\
xcopy . C:\cdrom\ /E /Y
echo.
echo.

echo done, change your working directory to C:\cdrom\ after establishing connection
echo.
echo.

echo run 'nc -l -p 2137' on linux host to get your shell
echo will try to connect in infinite loop in 5 seconds...
echo.
echo.

rem waiting 5 seconds...
ping -n 6 127.0.0.1>nul

:loop
echo connecting to 10.0.2.2:2137 ...

nc.exe 10.0.2.2 2137 -e cmd.exe

ping 127.0.0.1>nul
goto loop
pause

