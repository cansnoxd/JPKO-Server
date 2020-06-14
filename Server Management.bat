@echo off
color 0a
set mtext=What you want to do?: 

:Main
echo.
echo.
echo.
echo.
echo.
echo 	1) Start Server
echo.
echo 	2) Close Server
echo.
echo 	3) Restart Server
echo.
echo 	4) Clean Log Files
echo.
echo.
echo.
echo.
echo.
set /p uip=%mtext%
if %uip%==1 goto:Start
if %uip%==2 goto:Close
if %uip%==3 goto:Restart
if %uip%==4 goto:Clean
if not %uip%==1 if not %uip%==2 if not %uip%==3 if not %uip%==4 goto:TryAgain
exit

:Start
cd AIServer && start /min "" "AI Server.exe"
cd ..\Ebenezer && start /min Ebenezer.exe
cd ..\Billing server && start /min billing-server.exe
cd ..\Aujard && start /min Aujard.exe
cd ..\Login server && start /min login-server.exe && cd ..
cls
set mtext=Do you want to do something else?: 
goto:Main

:Close
wmic process where name="login-server.exe" delete >nul
wmic process where name="Aujard.exe" delete >nul
wmic process where name="billing-server.exe" delete >nul
wmic process where name="Ebenezer.exe" delete >nul
wmic process where name="AI Server.exe" delete >nul
cls
set mtext=Do you want to do something else?: 
goto:Main

:Restart
wmic process where name="login-server.exe" delete >nul
wmic process where name="Aujard.exe" delete >nul
wmic process where name="billing-server.exe" delete >nul
wmic process where name="Ebenezer.exe" delete >nul
wmic process where name="AI Server.exe" delete >nul
cd AIServer && start /min "" "AI Server.exe"
cd ..\Ebenezer && start /min Ebenezer.exe
cd ..\Billing server && start /min billing-server.exe
cd ..\Aujard && start /min Aujard.exe
cd ..\Login server && start /min login-server.exe && cd ..
cls
set mtext=Do you want to do something else?: 
goto:Main

:Clean
cd AIServer && del *.txt *.log >nul 2>&1
cd ..\Ebenezer && for %%i in (*.txt *.log) do if not %%i==BlockWord.txt if not %%i==HackToolList.txt if not %%i==Notice.txt del %%i >nul 2>&1
cd ..\Aujard && del *.txt *.log >nul 2>&1
cd ..\Login server && del *.log >nul 2>&1 && cd ..
cls
set mtext=Do you want to do something else?: 
goto:Main

:TryAgain
cls
set mtext=Choose one of the above: 
goto:Main
