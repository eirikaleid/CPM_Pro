@echo off
chcp 65001
cls

:: Color Setting: Green
color 0A

:: Title
echo ****************************************
echo    QUICK HELP TOOL
echo ****************************************

:MENU
echo 1. Show Computer Serial Number, Name, Brand, and Model
echo 2. Display IP Address
echo 3. Show Windows License Status
echo 4. Display System Information
echo 5. Windows Version Information (winver)
echo 6. Show Last Format Date
echo 7. Check Disk Status
echo 8. Show Windows Update Status
echo 9. Show CPU Information
echo 10. Show Memory (RAM) Usage
echo 11. Update Group Policies (gpupdate /force)
echo 12. List User Accounts
echo 13. Show Storage Status
echo 14. Scan Hard Drive (chkdsk)
echo 15. Disable Firewall
echo 16. Enable Firewall
echo 17. Repair Windows System Files
echo 18. Start Disk Cleanup (cleanmgr)
echo 19. Update All Programs
echo 20. Update Windows Store Apps
echo 21. Clear Network DNS Cache (flushdns)
echo 22. Clean Unnecessary Files (temp)
echo 23. Optimize RAM
echo 24. Perform Ping Test
echo 25. Perform Tracert (Path Tracking)
echo 26. Perform Nslookup (DNS Query)
echo 27. Show Netstat (Connection Status)
echo 28. Show ARP (Address Resolution Protocol) Table
echo 29. Show Route (Routing Table)
echo 30. Show Nbtstat (NetBIOS Status)
echo 31. Display IP Configuration (all)
echo 32. Release IP Configuration (release)
echo 33. Renew IP Configuration (renew)
echo 34. Show Wi-Fi Password
echo 35. Exit

set /p choice=Enter an option (1-35): 

if "%choice%"=="1" goto COMPUTER_INFO
if "%choice%"=="2" goto IP
if "%choice%"=="3" goto LICENSE
if "%choice%"=="4" goto SYSINFO
if "%choice%"=="5" goto WINVER
if "%choice%"=="6" goto LAST_FORMAT_DATE
if "%choice%"=="7" goto DISK
if "%choice%"=="8" goto WINDOWSUPDATE
if "%choice%"=="9" goto CPUINFO
if "%choice%"=="10" goto MEMORY
if "%choice%"=="11" goto GPUPDATE
if "%choice%"=="12" goto USERS
if "%choice%"=="13" goto STORAGE
if "%choice%"=="14" goto CHKDSK
if "%choice%"=="15" goto DISABLE_FIREWALL
if "%choice%"=="16" goto ENABLE_FIREWALL
if "%choice%"=="17" goto SFC
if "%choice%"=="18" goto CLEANUP
if "%choice%"=="19" goto UPDATE_PROGRAMS
if "%choice%"=="20" goto UPDATE_STORE_APPS
if "%choice%"=="21" goto CLEAR_DNS
if "%choice%"=="22" goto CLEAN_TEMP_FILES
if "%choice%"=="23" goto OPTIMIZE_RAM
if "%choice%"=="24" goto PING_TEST
if "%choice%"=="25" goto TRACERT_TEST
if "%choice%"=="26" goto NSLOOKUP_TEST
if "%choice%"=="27" goto NETSTAT_TEST
if "%choice%"=="28" goto ARP_TEST
if "%choice%"=="29" goto ROUTE_TEST
if "%choice%"=="30" goto NBTSTAT_TEST
if "%choice%"=="31" goto IPCONFIG
if "%choice%"=="32" goto RELEASE_IP
if "%choice%"=="33" goto RENEW_IP
if "%choice%"=="34" goto WIFI_PASSWORD
if "%choice%"=="35" exit
goto MENU

:: Show Computer Serial Number, Name, Brand, and Model
:COMPUTER_INFO
cls
echo Computer Serial Number:
wmic bios get serialnumber
echo.
echo Computer Name:
hostname
echo.
echo Brand and Model:
wmic computersystem get manufacturer, model
pause
goto MENU

:: Display IP Address
:IP
cls
echo Computer IP Address:
ipconfig | findstr /i "IPv4"
pause
goto MENU

:: Show Windows License Status
:LICENSE
cls
echo Windows License Status:
slmgr /xpr
echo.
echo Windows Product Key:
wmic path softwarelicensingservice get OA3xOriginalProductKey
pause
goto MENU

:: Display System Information
...
