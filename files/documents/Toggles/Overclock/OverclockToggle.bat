@echo off
cd %USERPROFILE%\Documents\Toggles\Overclock && find /i "Enabled" OverclockState.txt
if %errorlevel% equ 0 (
	"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" -profile2 -q
	echo Disabled > OverclockState.txt
	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\ OverclockToggle" /v MUIVerb /t REG_SZ /d "Overclock Disabled" /f
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\ OverclockToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,20" /f
) else (
	"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" -profile1 -q
	echo Enabled > OverclockState.txt
	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\ OverclockToggle" /v MUIVerb /t REG_SZ /d "Overclock Enabled" /f
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\ OverclockToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,21" /f
)