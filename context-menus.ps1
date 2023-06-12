# yo

function Tools {

  # Create Tools Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = 'SubCommands'
  $Value0        = 'SHELL32.dll,316'
  $Value1        = 'Tools'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
      New-Item -Path $RegistryPath1 -Force | Out-Null
    }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  # Create Tools 'Cleanup' Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'SubCommands'
  $Value0        = 'SHELL32.dll,32'
  $Value1        = 'Cleanup'
  $Value2        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'Cleanup' - 'Clear Clipboard' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\    ClearClipboard'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\    ClearClipboard\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,54'
  $Value1        = 'Clear Clipboard'
  $Value2        = 'cmd /c echo off | clip'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'Cleanup' - 'Ram Cleaner' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\   RamCleaner'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\   RamCleaner\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,12'
  $Value1        = 'Ram Cleaner'
  $Value2        = 'powershell Start-Process powershell -Verb RunAs {"%USERPROFILE%\Documents\RamCleaner\EmptyStandbyList.exe"}'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create Tools 'Cleanup' - 'File Cleanup' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\  FileCleanup'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\  FileCleanup\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,4'
  $Value1        = 'File Cleanup'
  $Value2        = 'cmd /c echo off | start explorer "file:C:\Windows\Temp" | start explorer "file:%TEMP%" | start cleanmgr'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed
  
  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\RamCleaner"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/RamCleaner.zip" -outfile "$Path0\RamCleaner.zip"

  Expand-Archive "$Path0\RamCleaner.zip" -DestinationPath "$Path1\Documents\RamCleaner"
  Remove-Item "$Path0\RamCleaner.zip"

  # Create Tools 'Cleanup' - 'Recycle Bin' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\ RecycleBin'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\             Cleanup\Shell\ RecycleBin\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,31'
  $Value1        = 'Recycle Bin'
  $Value2        = 'explorer.exe shell:RecycleBinFolder'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'Sens Matcher' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\            SensMatcher'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\            SensMatcher\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\SensMatcher\SensitivityMatcher.exe'
  $Value1        = 'Sens Matcher'
  $Value2        = 'cmd /c cd %USERPROFILE%\Documents\SensMatcher && start SensitivityMatcher.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\SensMatcher"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/SensMatcher.zip" -outfile "$Path0\SensMatcher.zip"

  Expand-Archive "$Path0\SensMatcher.zip" -DestinationPath "$Path1\Documents\SensMatcher"
  Remove-Item "$Path0\SensMatcher.zip"

  # Create Tools 'Regedit' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\           Regedit'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\           Regedit\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'regedit.exe'
  $Value1        = 'Regedit'
  $Value2        = 'regedit'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'HWiNFO' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         HWiNFO'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         HWiNFO\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\HWiNFO\HWiNFO64.exe'
  $Value1        = 'HWiNFO'
  $Value2        = '%USERPROFILE%\Documents\HWiNFO\HWiNFO64.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\HWiNFO"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/HWiNFO.zip" -outfile "$Path0\HWiNFO.zip"

  Expand-Archive "$Path0\HWiNFO.zip" -DestinationPath "$Path1\Documents\HWiNFO"
  Remove-Item "$Path0\HWiNFO.zip"

  # Create Tools 'CMD' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         CMD'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         CMD\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'cmd.exe'
  $Value1        = 'CMD'
  $Value2        = 'powershell Start-Process cmd -Verb RunAs'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'PowerShell' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\        PowerShell'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\        PowerShell\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'powershell.exe'
  $Value1        = 'PowerShell'
  $Value2        = 'powershell Start-Process powershell -Verb RunAs'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'Autoruns' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\       Autoruns'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\       Autoruns\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = "%USERPROFILE%\Documents\Autoruns\Autoruns64.exe"
  $Value1        = 'Autoruns'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Autoruns\Autoruns64.exe'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Autoruns"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Autoruns.zip" -outfile "$Path0\Autoruns.zip"

  Expand-Archive "$Path0\Autoruns.zip" -DestinationPath "$Path1\Documents\Autoruns"
  Remove-Item "$Path0\Autoruns.zip"

  # Create Tools 'GoXLR' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      GoXLR'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      GoXLR\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files (x86)\TC-Helicon\GOXLR\GoXLR App.exe'
  $Value1        = 'GoXLR'
  $Value2        = 'C:\Program Files (x86)\TC-Helicon\GOXLR\GoXLR App.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'Elgato' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\     Elgato'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\     Elgato\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files\Elgato\4KCaptureUtility\4KCaptureUtility.exe'
  $Value1        = 'Elgato'
  $Value2        = 'C:\Program Files\Elgato\4KCaptureUtility\4KCaptureUtility.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create Tools 'AnyDesk' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\    AnyDesk'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\    AnyDesk\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\AnyDesk\AnyDesk.exe'
  $Value1        = 'AnyDesk'
  $Value2        = '%USERPROFILE%\Documents\AnyDesk\AnyDesk.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\AnyDesk"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/AnyDesk.zip" -outfile "$Path0\AnyDesk.zip"

  Expand-Archive "$Path0\AnyDesk.zip" -DestinationPath "$Path1\Documents\AnyDesk"
  Remove-Item "$Path0\AnyDesk.zip"

  # Create Tools 'KeePass' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\   KeePass'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\   KeePass\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\KeePass\KeePass.exe'
  $Value1        = 'KeePass'
  $Value2        = '%USERPROFILE%\Documents\KeePass\KeePass.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
  
  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\KeePass"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/KeePass.zip" -outfile "$Path0\KeePass.zip"

  Expand-Archive "$Path0\KeePass.zip" -DestinationPath "$Path1\Documents\KeePass"
  Remove-Item "$Path0\KeePass.zip"

}

function File-Explorer {

  # Create 'File Explorer' Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = 'SubCommands'
  $Value0        = 'explorer.exe'
  $Value1        = 'File Explorer'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  # Create File Explorer - 'Everything' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\        Everything'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\        Everything\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Everything\Everything.exe'
  $Value1        = 'Everything'
  $Value2        = '%USERPROFILE%\Documents\Everything\Everything.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Everything"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Everything.zip" -outfile "$Path0\Everything.zip"

  Expand-Archive "$Path0\Everything.zip" -DestinationPath "$Path1\Documents\Everything"
  Remove-Item "$Path0\Everything.zip"

  # Create File Explorer - 'Desktop' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\      Desktop'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\      Desktop\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,174'
  $Value1        = 'Desktop'
  $Value2        = 'explorer %USERPROFILE%\Desktop'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create File Explorer - 'Documents' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\     Documents'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\     Documents\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,107'
  $Value1        = 'Documents'
  $Value2        = 'explorer %USERPROFILE%\Documents'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create File Explorer - 'Downloads' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\    Downloads'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\    Downloads\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,175'
  $Value1        = 'Downloads'
  $Value2        = 'explorer %USERPROFILE%\Downloads'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create File Explorer - 'Videos' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\   Videos'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\   Videos\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,178'
  $Value1        = 'Videos'
  $Value2        = 'explorer %USERPROFILE%\Videos'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create File Explorer - 'Music' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\  Music'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\  Music\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,103'
  $Value1        = 'Music'
  $Value2        = 'explorer %USERPROFILE%\Music'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create File Explorer - 'Pictures' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\ Pictures'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\ Pictures\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,108'
  $Value1        = 'Pictures'
  $Value2        = 'explorer %USERPROFILE%\Pictures'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

}

function CRU-Toggle {

  # Create 'CRU Toggle' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRUToggle'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRUToggle\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'inetcpl.cpl,20'
  $Value1        = 'Native'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Toggles\CRU\CRUToggle.bat'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\CRU"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/CRU.zip" -outfile "$Path0\CRU.zip"

  Expand-Archive "$Path0\CRU.zip" -DestinationPath "$Path1\Documents\Toggles\CRU"
  Remove-Item "$Path0\CRU.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\CRU"

}

function CRU {

  # Create 'CRU' Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = 'SubCommands'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = 'CRU'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  # Create 'CRU' - '1920x1080' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\   1920x1080'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\   1920x1080\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = '1920x1080'
  $Value2        = '%USERPROFILE%\Documents\Toggles\CRU\1920x1080.bat'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create 'CRU' - '1728x1080' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\  1728x1080'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\  1728x1080\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = '1728x1080'
  $Value2        = '%USERPROFILE%\Documents\Toggles\CRU\1728x1080.bat'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create 'CRU' - '1440x1080' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\ 1440x1080'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\ 1440x1080\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = '1440x1080'
  $Value2        = '%USERPROFILE%\Documents\Toggles\CRU\1440x1080.bat'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\CRU"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/CRU.zip" -outfile "$Path0\CRU.zip"

  Expand-Archive "$Path0\CRU.zip" -DestinationPath "$Path1\Documents\Toggles\CRU"
  Remove-Item "$Path0\CRU.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\CRU"

}

function QoS {

  # Create 'QoS' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\          QoS'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\          QoS\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'inetcpl.cpl,5'
  $Value1        = 'QoS'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" http://192.168.77.1/dumaweb/#smartqos'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

function OBS-Portable {

  # Create 'OBS' Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = 'SubCommands'
  $Value0        = '%USERPROFILE%\Documents\OBS\Recording\bin\64bit\obs64.exe'
  $Value1        = 'OBS'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  # Create 'OBS' - 'ReplayBuffer' Keys and Commands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\   ReplayBuffer'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\   ReplayBuffer\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\OBS\ReplayBuffer\bin\64bit\obs64.exe'
  $Value1        = 'Replay Buffer'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd %USERPROFILE%\Documents\OBS\ReplayBuffer\bin\64bit && start obs64.exe --startreplaybuffer'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create 'OBS' - 'Recording' Keys and Commands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\  Recording'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\  Recording\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\OBS\Recording\bin\64bit\obs64.exe'
  $Value1        = 'Recording'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd %USERPROFILE%\Documents\OBS\Recording\bin\64bit && start obs64.exe'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Create 'OBS' - 'Streaming' Keys and Commands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\ Streaming'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\ Streaming\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\OBS\Streaming\bin\64bit\obs64.exe'
  $Value1        = 'Streaming'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd %USERPROFILE%\Documents\OBS\Streaming\bin\64bit && start obs64.exe'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  # Download readme

  $Path0 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path0\Documents\OBS\Recording"
  New-Item -ItemType Directory -Path "$Path0\Documents\OBS\ReplayBuffer"
  New-Item -ItemType Directory -Path "$Path0\Documents\OBS\Streaming"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/OBS/readme.txt" -outfile "$Path0\Desktop\readme.txt"

  Invoke-Item -Path "$Path0\Desktop\readme.txt"

}

function OBS {

  # Create 'OBS' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBS'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBS\Command'
  $FilePath0     = '"C:\Program Files\obs-studio\bin\64bit"'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'C:\Program Files\obs-studio\bin\64bit\obs64.exe'
  $Value1        = 'OBS'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd $FilePath0 && start obs64.exe'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

function Adobe {

  # Create 'Adobe' Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = 'SubCommands'
  $Value0        = 'C:\Program Files\Adobe\Adobe Premiere Pro 2023\AdobeCrashReport.exe'
  $Value1        = 'Adobe'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  # Create 'Premiere' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\  Premiere'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\  Premiere\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe'
  $Value1        = 'Premiere'
  $Value2        = '"C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create 'Photoshop' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\ Photoshop'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\ Photoshop\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe'
  $Value1        = 'Photoshop'
  $Value2        = '"C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

}

Function YouTube-Music {

  # Create 'YouTube Music' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       YouTubeMusic'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       YouTubeMusic\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = '%USERPROFILE%\AppData\Local\Programs\youtube-music-desktop-app\YouTube Music Desktop App.exe'
  $Value1        = 'YouTube Music'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '"%USERPROFILE%\AppData\Local\Programs\youtube-music-desktop-app\YouTube Music Desktop App.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

}

Function Apple-Music {

  # Create 'Apple Music' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       AppleMusic'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       AppleMusic\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'C:\Program Files\WindowsApps\AppleInc.iTunes_12129.4.57066.0_x64__nzyj5cx40ttqa\iTunes.exe'
  $Value1        = 'Apple Music'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '"C:\Program Files\WindowsApps\AppleInc.iTunes_12129.4.57066.0_x64__nzyj5cx40ttqa\iTunes.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Spotify {

  # Create 'Spotify' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       Spotify'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       Spotify\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = '%USERPROFILE%\AppData\Roaming\Spotify\Spotify.exe'
  $Value1        = 'Spotify'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '%USERPROFILE%\AppData\Roaming\Spotify\Spotify.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

}

Function Discord {

  # Create 'Discord' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\      Discord'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\      Discord\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = '%USERPROFILE%\AppData\Local\Discord\app-1.0.9013\Discord.exe'
  $Value1        = 'Discord'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '%USERPROFILE%\AppData\Local\Discord\app-1.0.9013\Discord.exe'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

}

Function Edge {

  # Create 'Edge' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Edge'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Edge\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
  $Value1        = 'Edge'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Chrome {

  # Create 'Chrome' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Chrome'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Chrome\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
  $Value1        = 'Chrome'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '"C:\Program Files\Google\Chrome\Application\chrome.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Firefox {

  # Create 'Firefox' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Firefox'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Firefox\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'C:\Program Files\Mozilla Firefox\firefox.exe'
  $Value1        = 'Firefox'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = '"C:\Program Files\Mozilla Firefox\firefox.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Game-Launchers {

  # Create 'Game Launchers' Keys and SubCommands

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = 'SubCommands'
  $Value0        = 'wsl.exe'
  $Value1        = 'Game Launchers'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = ''

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  # Create 'Steam' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\   Steam'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\   Steam\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files (x86)\Steam\Steam.exe'
  $Value1        = 'Steam'
  $Value2        = '"C:\Program Files (x86)\Steam\Steam.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create 'Battle Net' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\  BattleNet'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\  BattleNet\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files (x86)\Battle.net\Battle.net Launcher.exe'
  $Value1        = 'Battle Net'
  $Value2        = '"C:\Program Files (x86)\Battle.net\Battle.net Launcher.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  # Create 'Epic Games' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\ EpicGames'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\ EpicGames\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe'
  $Value1        = 'Epic Games'
  $Value2        = '"C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe"'

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

}

function Bufferbloat-Toggle {

  # Create 'Bufferbloat Toggle' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'inetcpl.cpl,20'
  $Value1        = 'Bufferbloat Enabled'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Toggles\Bufferbloat\BufferbloatToggle.bat'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  # Download Files Needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\Bufferbloat"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/Bufferbloat.zip" -outfile "$Path0\Bufferbloat.zip"

  Expand-Archive "$Path0\Bufferbloat.zip" -DestinationPath "$Path1\Documents\Toggles\Bufferbloat"
  Remove-Item "$Path0\Bufferbloat.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\Bufferbloat"

}

function PowerPlan-Toggle {

  # Create 'Power Plan Toggle' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'inetcpl.cpl,20'
  $Value1        = 'Idle Enabled'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Toggles\PowerPlan\PowerPlanToggle.bat'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\PowerPlan"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/PowerPlan.zip" -outfile "$Path0\PowerPlan.zip"

  Expand-Archive "$Path0\PowerPlan.zip" -DestinationPath "$Path1\Documents\Toggles\PowerPlan"
  Remove-Item "$Path0\PowerPlan.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\PowerPlan"

}

function Overclock-Toggle {

  # Create 'Overclock Toggle' Keys and Command

  # Set variables to indicate values and keys to set
  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\ OverclockToggle'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\ OverclockToggle\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'Position'
  $Name3         = 'SeparatorBefore'
  $Name4         = '(Default)'
  $Value0        = 'inetcpl.cpl,20'
  $Value1        = 'Overclock Disabled'
  $Value2        = 'Bottom'
  $Value3        = ''
  $Value4        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Toggles\Overclock\OverclockToggle.bat'"

  # Create the keys if they do not exist
  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  # Now set the values
  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\Overclock"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/Overclock.zip" -outfile "$Path0\Overclock.zip"

  Expand-Archive "$Path0\Overclock.zip" -DestinationPath "$Path1\Documents\Toggles\Overclock"
  Remove-Item "$Path0\Overclock.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\Overclock"

}

function Remove-Display-Personalize {

  # Download files needed

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"
  iwr -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/NSudo.zip" -outfile "$Path0\NSudo.zip"
  iwr -uri "https://raw.githubusercontent.com/bhopdusty/context-menus/main/files/Other/Remove%20Display%20Settings%20and%20Personalize%20from%20Context%20Menu.reg" -outfile "$Path1\Desktop\RemoveDisplayAndPersonalize.reg"

  Expand-Archive "$Path0\NSudo.zip" -DestinationPath "$Path0\NSudo"
  Remove-Item "$Path0\NSudo.zip"

  $SourceFilePath = "$Path0\NSudo\NSudo Launcher\Nsudo.bat"
  $ShortcutPath = "$Path1\Desktop\Nsudo Shortcut.lnk"

  $WScriptObj = New-Object -ComObject ("WScript.Shell")
  $shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
  $shortcut.TargetPath = $SourceFilePath
  $shortcut.Save()

}