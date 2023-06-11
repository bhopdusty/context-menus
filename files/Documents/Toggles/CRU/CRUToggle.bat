@echo off
	cd "%USERPROFILE%\Documents\Toggles\CRU" && find /i "Native" ActiveResolution.txt
if %errorlevel% equ 0 (
	"%USERPROFILE%\Documents\Toggles\CRU\1440x1080.bat"
	echo Stretched> ActiveResolution.txt
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\           CRUToggle" /v MUIVerb /t REG_SZ /d "Stretched" /f
    REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\           CRUToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,21" /f
) else (
	"%USERPROFILE%\Documents\Toggles\CRU\1920x1080.bat"
	echo Native> ActiveResolution.txt
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\           CRUToggle" /v MUIVerb /t REG_SZ /d "Native" /f
    REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\           CRUToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,20" /f
)