@echo off
title Unknown maintenance
color 5
echo MADE BY Unknown
echo.
pause

echo ==========================
echo = PC maintenance program =
echo ==========================
echo.

echo Creating a Restorepoint

set "RestorePointName=nCollectiveRestorePoint"

wbadmin start backup -backupTarget:%SystemDrive% -include:%SystemDrive% -vssFull -allCritical -quiet


:a

echo.
echo HERE YOU CAN NOW CHOOSE WHAT YOU WANT TO START!
echo.
echo [1] Delete temporary files
echo.
echo [2] Repair system files (sfc + dism)
echo.
echo [3] Hard drive defragmentation
echo.
echo [4] Check hard drives for errors and fix them (if necessary)
echo.
echo [5] Update Windows
echo.
echo [6] Send computer information to the files (which are automatically created in the folder!)
echo.
echo [7] Exit
echo.
echo [8] Information
echo.
set /p op=">>> "
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto 5
if %op%==6 goto 6
if %op%==7 goto Exit
if %op%==8 goto c
if %op%==9 goto d
goto error
pause

:d
echo.
echo PLEASE CHOOSE A NUMBER BETWEEN [1] and [8]!
echo.
pause
goto a


:6
echo.
echo Start information transfer...
systeminfo > "systeminfo.txt"
dxdiag /t "dxdiag.txt"
echo.
echo Hardware information was stored in systeminfo.txt and dxdiag.txt.

echo.
echo Desired program completed.
echo.
echo IF SOMETHING HAS BROKEN BACK TO THE RECOVERY POINT THAT WAS AUTOMATICALLY RECOVERED!
echo.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a


:1
echo.
echo Delete temporary files...
echo.
del /q /s /f %TEMP%\*
echo.
echo Temporary files have been deleted.
echo.

echo Desired program completed.
echo.
echo IF SOMETHING HAS BROKEN BACK TO THE RECOVERY POINT THAT WAS AUTOMATICALLY RECOVERED!
echo.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a


:2
echo.
echo Repair system files...
echo.
sfc /scannow
echo.
echo Starting dism...
echo.
dism /online /cleanup-image /restorehealth
echo.
echo System files have been repaired.
echo.

echo Desired program completed.
echo IF SOMETHING HAS BROKEN BACK TO THE RECOVERY POINT THAT WAS AUTOMATICALLY RECOVERED!
echo.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a


:3
echo.
echo Run defragmentation...
defrag C: /U /V
echo Defragmentation completed.
echo.

echo Desired program completed.
echo IF SOMETHING HAS BROKEN BACK TO THE RECOVERY POINT THAT WAS AUTOMATICALLY RECOVERED!
echo.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a

:4
echo.
echo Check and repair hard drive errors...
chkdsk C: /f /r
echo Check and repair completed.
echo.

echo Desired program completed.
echo IF SOMETHING HAS BROKEN BACK TO THE RECOVERY POINT THAT WAS AUTOMATICALLY RECOVERED!
echo.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a

:5
echo.
echo Update Windows Update History...
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old
net start wuauserv
net start cryptSvc
net start bits
net start msiserver
echo Windows update history has been updated.
echo.


echo Desired program completed.
echo IF SOMETHING HAS BROKEN BACK TO THE RECOVERY POINT THAT WAS AUTOMATICALLY RECOVERED!
echo.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a


:c
echo.
echo If you have any Problems after using my Tool go back to Restorpoint! My Tool created one!
echo.
echo RUN AS ADMINISTRATOR!!
echo.
echo REASON WHY YOU NEED TO RUN AS ADMINISTRATOR:
echo.
echo As an administrator, certain commands and operations require elevated privileges to access and modify system resources effectively. In the case of the wbadmin start backup command, it involves creating a backup of critical system components, including system files and settings, which are crucial for the overall stability and functionality of the system.
echo.
echo Running this command as an administrator ensures that it has the necessary permissions to access and back up all critical system components without encountering permission-related issues. Additionally, administrative privileges are required to interact with Volume Shadow Copy Service (VSS), which is utilized for creating a snapshot of the system state and ensuring the consistency of the backup.
echo.
echo Moreover, performing system backups inherently involves accessing and modifying system-level resources and files, which are restricted to regular users for security reasons. By executing the command with administrative privileges, the user explicitly acknowledges the responsibility and authority required to carry out such operations safely and effectively.
echo.
echo In summary, running the wbadmin start backup command as an administrator is essential to ensure smooth execution, complete access to critical system components, and adherence to security protocols governing system-level operations. Failure to do so may result in incomplete backups, errors, or potential security risks. Therefore, it is imperative to execute administrative tasks like system backups with the appropriate level of authority to maintenance system integrity and reliability.
echo.
echo.
echo .##....##..######...#######..##.......##.......########..######..########.####.##.....##.########
echo .###...##.##....##.##.....##.##.......##.......##.......##....##....##.....##..##.....##.##......
echo .####..##.##.......##.....##.##.......##.......##.......##..........##.....##..##.....##.##......
echo .##.##.##.##.......##.....##.##.......##.......######...##..........##.....##..##.....##.######..
echo .##..####.##.......##.....##.##.......##.......##.......##..........##.....##...##...##..##......
echo .##...###.##....##.##.....##.##.......##.......##.......##....##....##.....##....##.##...##......
echo .##....##..######...#######..########.########.########..######.....##....####....###....########
echo.
echo. THX FOR USING MY TOOL :)
pause
goto a
