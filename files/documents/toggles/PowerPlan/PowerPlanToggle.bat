@echo off
powercfg -getactivescheme | find /i "Enabled"
if %errorlevel% equ 0 (
	powercfg /s 56258c4c-6c0c-4fba-af1c-21c77bfeba1b
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle" /v MUIVerb /t REG_SZ /d "Idle Disabled" /f
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,21" /f
) else (
    powercfg /s aed0a3b1-f55f-4b4e-a457-ec311e15a077
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle" /v MUIVerb /t REG_SZ /d "Idle Enabled" /f
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,20" /f
)