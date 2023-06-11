@echo off
netsh int ip show int | find /i "1500"
if %errorlevel% equ 0 (
	powershell Start-Process powershell -Verb RunAs {netsh int tcp set global autotuninglevel=disabled;netsh interface ipv4 set subinterface Ethernet mtu=950 store=persistent}
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle" /v MUIVerb /t REG_SZ /d "Bufferbloat Disabled" /f
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,21" /f
) else (
    powershell Start-Process powershell -Verb RunAs {netsh int tcp set global autotuninglevel=normal;netsh interface ipv4 set subinterface Ethernet mtu=1500 store=persistent}
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle" /v MUIVerb /t REG_SZ /d "Bufferbloat Enabled" /f
	REG ADD "HKEY_LOCAL_MACHINE\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle" /v Icon /t REG_SZ /d "inetcpl.cpl,20" /f
)