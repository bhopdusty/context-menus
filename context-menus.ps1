using namespace System.Management.Automation # Required by Invoke-NGENpsosh
Remove-Module ContextMenus -ErrorAction Ignore
New-Module ContextMenus ([ScriptBlock]::Create({
function Assert-Choice {
    if (-Not(Get-Command choice.exe -ErrorAction Ignore)){
        Write-Host "[!] Unable to find choice.exe (it comes with Windows, did a little bit of unecessary debloating?)" -ForegroundColor Red
        PauseNul
        exit 1
    }
}
function Assert-Path {
    param(
        $Path
    )
    if (-Not(Test-Path -Path $Path)) {
        New-Item -Path $Path -Force | Out-Null
    }
}
function Get-ShortcutTarget {
    [alias('gst')]
    param([String]$ShortcutPath)
    Try {
        $null = Get-Item $ShortcutPath -ErrorAction Stop
    } Catch {
        throw
    }
    return (New-Object -ComObject WScript.Shell).CreateShortcut($ShortcutPath).TargetPath
}
<#
	.LINK
	Frankensteined from Inestic's WindowsFeatures Sophia Script function
	https://github.com/Inestic
	https://github.com/farag2/Sophia-Script-for-Windows/blob/06a315c643d5939eae75bf6e24c3f5c6baaf929e/src/Sophia_Script_for_Windows_10/Module/Sophia.psm1#L4946
	.SYNOPSIS
	User gets a nice checkbox-styled menu in where they can select 
	.EXAMPLE
	Screenshot: https://i.imgur.com/zrCtR3Y.png
	$ToInstall = Invoke-CheckBox -Items "7-Zip", "PowerShell", "Discord"
	Or you can have each item have a description by passing an array of hashtables:
	$ToInstall = Invoke-CheckBox -Items @(
		@{
			DisplayName = "7-Zip"
			# Description = "Cool Unarchiver"
		},
		@{
			DisplayName = "Windows Sandbox"
			Description = "Windows' Virtual machine"
		},
		@{
			DisplayName = "Firefox"
			Description = "A great browser"
		},
		@{
			DisplayName = "PowerShell 777"
			Description = "PowerShell on every system!"
		}
	)
#>
function Invoke-Checkbox{
param(
	$Title = "Select an option",
	$ButtonName = "Confirm",
	$Items = @("Fill this", "With passing an array", "to the -Item param!")
)
if (!$Items.Description){
	$NewItems = @()
	ForEach($Item in $Items){
		$NewItems += @{DisplayName = $Item}
	}
	$Items = $NewItems
} 
Add-Type -AssemblyName PresentationCore, PresentationFramework, System.Drawing, System.Windows.Forms, WindowsFormsIntegration
# Initialize an array list to store the selected Windows features
$SelectedFeatures = New-Object -TypeName System.Collections.ArrayList($null)
$ToReturn = New-Object -TypeName System.Collections.ArrayList($null)
#region XAML Markup
# The section defines the design of the upcoming dialog box
[xml]$XAML = '
<Window
	xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
	xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
	Name="Window"
	MinHeight="100" MinWidth="350"
	SizeToContent="WidthAndHeight" WindowStartupLocation="CenterScreen"
	TextOptions.TextFormattingMode="Display" SnapsToDevicePixels="True"
	FontFamily="Arial" FontSize="16" ShowInTaskbar="True"
	Background="#000000" Foreground="#FFFFFF">
	<Window.TaskbarItemInfo>
		<TaskbarItemInfo/>
	</Window.TaskbarItemInfo>
	<Window.Resources>
		<Style TargetType="StackPanel">
			<Setter Property="Orientation" Value="Horizontal"/>
			<Setter Property="VerticalAlignment" Value="Top"/>
		</Style>
		<Style TargetType="CheckBox">
			<Setter Property="Margin" Value="5, 5, 5, 5"/>
			<Setter Property="IsChecked" Value="True"/>
      <Setter Property="Foreground" Value="#FFFFFF" />
		</Style>
		<Style TargetType="TextBlock">
			<Setter Property="Margin" Value="5, 10, 10, 10"/>
		</Style>
		<Style TargetType="Button">
			<Setter Property="Margin" Value="25"/>
			<Setter Property="Padding" Value="15"/>
		</Style>
		<Style TargetType="Border">
			<Setter Property="Grid.Row" Value="1"/>
			<Setter Property="CornerRadius" Value="0"/>
			<Setter Property="BorderThickness" Value="0, 1, 0, 1"/>
			<Setter Property="BorderBrush" Value="#000000"/>
		</Style>
		<Style TargetType="ScrollViewer">
			<Setter Property="HorizontalScrollBarVisibility" Value="Disabled"/>
			<Setter Property="BorderBrush" Value="#000000"/>
			<Setter Property="BorderThickness" Value="0, 1, 0, 1"/>
		</Style>
	</Window.Resources>
	<Grid>
		<Grid.RowDefinitions>
			<RowDefinition Height="250"/>
			<RowDefinition Height="*"/>
			<RowDefinition Height="Auto"/>
		</Grid.RowDefinitions>
		<ScrollViewer Name="Scroll" Grid.Row="0"
			HorizontalScrollBarVisibility="Disabled"
			VerticalScrollBarVisibility="Auto">
			<StackPanel Name="PanelContainer" Orientation="Vertical"/>
		</ScrollViewer>
		<Button Name="Button" Grid.Row="2"/>
	</Grid>
</Window>
'
#endregion XAML Markup
$Form = [Windows.Markup.XamlReader]::Load((New-Object System.Xml.XmlNodeReader $xaml))
$XAML.SelectNodes("//*[@Name]") | ForEach-Object {
	Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)
}
#region Functions
function Get-CheckboxClicked
{
	[CmdletBinding()]
	param
	(
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $true
		)]
		[ValidateNotNull()]
		$CheckBox
	)
	$Feature = $Items | Where-Object -FilterScript {$_.DisplayName -eq $CheckBox.Content}
	if ($CheckBox.IsChecked) {
		[void]$SelectedFeatures.Add($Feature)
	}
	else {
		[void]$SelectedFeatures.Remove($Feature)
	}
	if ($SelectedFeatures.Count -gt 0) {
		$Button.Content = $ButtonName
		$Button.IsEnabled = $true
	}
	else {
		$Button.Content = "Cancel"
		$Button.IsEnabled = $true
	}
}
function Add-FeatureControl
{
	[CmdletBinding()]
	param
	(
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $true
		)]
		[ValidateNotNull()]
		$Feature
	)
	process {
		$StackPanel = New-Object -TypeName System.Windows.Controls.StackPanel
		$CheckBox = New-Object -TypeName System.Windows.Controls.CheckBox
		$CheckBox.Add_Click({Get-CheckboxClicked -CheckBox $_.Source})
		$Checkbox.Content = $Feature.DisplayName
		if ($Feature.Description){
			$CheckBox.ToolTip = $Feature.Description
		}
		$Checkbox.IsChecked = $False
		[void]$StackPanel.Children.Add($CheckBox)
		[void]$PanelContainer.Children.Add($StackPanel)
	}
}
$Window.Add_Loaded({$Items | Add-FeatureControl})
$Button.Content = $ButtonName
$Button.Add_Click({
	[void]$Window.Close()
	$ToReturn.Add($SelectedFeatures.DisplayName)
})
$Window.Title = $Title
# ty chrissy <3 https://blog.netnerds.net/2016/01/adding-toolbar-icons-to-your-powershell-wpf-guis/
$base64 = "iVBORw0KGgoAAAANSUhEUgAAACoAAAAqCAMAAADyHTlpAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAPUExURQAAAP///+vr6+fn5wAAAD8IT84AAAAFdFJOU/////8A+7YOUwAAAAlwSFlzAAALEwAACxMBAJqcGAAAANBJREFUSEut08ESgjAMRVFQ/v+bDbxLm9Q0lRnvQtrkDBt1O4a2FoNWHIBajJW/sQ+xOnNnlkMsrXZkkwRolHHaTXiUYfS5SOgXKfuQci0T5bLoIeWYt/O0FnTfu62pyW5X7/S26D/yFca19AvBXMaVbrnc3n6p80QGq9NUOqtnIRshhi7/ffHeK0a94TfQLQPX+HO5LVef0cxy8SX/gokU/bIcQvxjB5t1qYd0aYWuz4XF6FHam/AsLKDTGWZpuWNqWZ358zdmrOLNAlkM6Dg+78AGkhvs7wgAAAAASUVORK5CYII="
# Create a streaming image by streaming the base64 string to a bitmap streamsource
$bitmap = New-Object System.Windows.Media.Imaging.BitmapImage
$bitmap.BeginInit()
$bitmap.StreamSource = [System.IO.MemoryStream][System.Convert]::FromBase64String($base64)
$bitmap.EndInit()
$bitmap.Freeze()
# This is the toolbar icon and description
$Form.TaskbarItemInfo.Overlay = $bitmap
$Form.TaskbarItemInfo.Description = $window.Title
$Window.Add_Closing({[System.Windows.Forms.Application]::Exit()})
$Form.Show()
# This makes it pop up
$Form.Activate() | Out-Null
# Create an application context for it to all run within. 
# This helps with responsiveness and threading.
$appContext = New-Object System.Windows.Forms.ApplicationContext
[void][System.Windows.Forms.Application]::Run($appContext) 
return $ToReturn
}
# https://github.com/chrisseroka/ps-menu
function Menu {
    param ([array]$menuItems, [switch]$ReturnIndex=$false, [switch]$Multiselect)
function DrawMenu {
    param ($menuItems, $menuPosition, $Multiselect, $selection)
    $l = $menuItems.length
    for ($i = 0; $i -le $l;$i++) {
		if ($menuItems[$i] -ne $null){
			$item = $menuItems[$i]
			if ($Multiselect)
			{
				if ($selection -contains $i){
					$item = '[x] ' + $item
				}
				else {
					$item = '[ ] ' + $item
				}
			}
			if ($i -eq $menuPosition) {
				Write-Host "> $($item)" -ForegroundColor Green
			} else {
				Write-Host "  $($item)"
			}
		}
    }
}
function Toggle-Selection {
	param ($pos, [array]$selection)
	if ($selection -contains $pos){ 
		$result = $selection | where {$_ -ne $pos}
	}
	else {
		$selection += $pos
		$result = $selection
	}
	$result
}
    $vkeycode = 0
    $pos = 0
    $selection = @()
    if ($menuItems.Length -gt 0)
	{
		try {
			[console]::CursorVisible=$false #prevents cursor flickering
			DrawMenu $menuItems $pos $Multiselect $selection
			While ($vkeycode -ne 13 -and $vkeycode -ne 27) {
				$press = $host.ui.rawui.readkey("NoEcho,IncludeKeyDown")
				$vkeycode = $press.virtualkeycode
				If ($vkeycode -eq 38 -or $press.Character -eq 'k') {$pos--}
				If ($vkeycode -eq 40 -or $press.Character -eq 'j') {$pos++}
				If ($vkeycode -eq 36) { $pos = 0 }
				If ($vkeycode -eq 35) { $pos = $menuItems.length - 1 }
				If ($press.Character -eq ' ') { $selection = Toggle-Selection $pos $selection }
				if ($pos -lt 0) {$pos = 0}
				If ($vkeycode -eq 27) {$pos = $null }
				if ($pos -ge $menuItems.length) {$pos = $menuItems.length -1}
				if ($vkeycode -ne 27)
				{
					$startPos = [System.Console]::CursorTop - $menuItems.Length
					[System.Console]::SetCursorPosition(0, $startPos)
					DrawMenu $menuItems $pos $Multiselect $selection
				}
			}
		}
		finally {
			[System.Console]::SetCursorPosition(0, $startPos + $menuItems.Length)
			[console]::CursorVisible = $true
		}
	}
	else {
		$pos = $null
	}

    if ($ReturnIndex -eq $false -and $pos -ne $null)
	{
		if ($Multiselect){
			return $menuItems[$selection]
		}
		else {
			return $menuItems[$pos]
		}
	}
	else 
	{
		if ($Multiselect){
			return $selection
		}
		else {
			return $pos
		}
	}
}
<#
$Original = @{
    lets = 'go'
    Sub = @{
      Foo =  'bar'
      big = 'ya'
    }
    finish = 'fish'
}
$Patch = @{
    lets = 'arrive'
    Sub = @{
      Foo =  'baz'
    }
    finish ='cum'
    New="Ye"
}
#>
function Context-Menu {
    <#
    .SYNOPSIS
    Display Name: Context Menu Shortcuts
    .DESCRIPTION
    easily add context menus shortcuts
    #.PARAMETER Encoder
    #Which hardware type you wish to record with
    #test: test
    #.PARAMETER OBS64Path
    #If you've got a portable install or something, pass in the main OBS binary's path here
    #>
    [alias('opt')]
    param(
        #[ValidateSet('test')]
        #[String]$Encoder,
        #[ValidateScript({Test-Path -Path $_ -PathType Leaf})]
        #[String]$OBS64Path,
        [ValidateSet('ContextMenu')]
        [String]$Preset = 'ContextMenu',
        [ValidateSet(
            'Tools',
            'Tools-Revert',
            'File-Explorer',
            'File-Explorer-Revert',
            'Editing',
            'Editing-Revert',
            'Remove-Display-Personalize',
            'Remove-Display-Personalize-Revert')]
        [Array]$ContextMenu = (Invoke-CheckBox -Title "Select Context Menus to Add" -Items (
            'Tools',
            'Tools-Revert',
            'File-Explorer',
            'File-Explorer-Revert',
            'Editing',
            'Editing-Revert',
            'Remove-Display-Personalize',
            'Remove-Display-Personalize-Revert'))
        #[ValidateScript({ Test-Path -Path $_ -PathType Container })]
        #[String]$OBSProfile = $null
    )  
    if ($True -in [bool]$ContextMenu){ # If there is anything in $ContextMenu
Write-Output "Adding Context Menus"
            if ('Tools' -in $ContextMenu){
                Tools
            }
            if ('Tools-Revert' -in $ContextMenu){
                Tools-Revert
            }
            if ('File-Explorer' -in $ContextMenu){
                File-Explorer
            }
            if ('File-Explorer-Revert' -in $ContextMenu){
                File-Explorer-Revert
            }
            if ('Editing' -in $ContextMenu){
                Editing
            }
            if ('Editing-Revert' -in $ContextMenu){
                Editing-Revert
            }
            if ('Remove-Display-Personalize' -in $ContextMenu){
                Remove-Display-Personalize
            }
            if ('Remove-Display-Personalize-Revert' -in $ContextMenu){
                Remove-Display-Personalize-Revert
            }
<#
        if ('QoS' -in $ContextMenu){
            QoS
        }
        if ('QoS-Revert' -in $ContextMenu){
            QoS-Revert
        }
#>
    }
    Write-Host "Added Selected Context Menus" -ForegroundColor Green
}
  Function Tools {
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools'
    If (-NOT (Test-Path $RegistryPath0)) {
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = 'Position'
      $Name3 = 'SeparatorBefore'
      $Name4 = 'SubCommands'
      $Value0 = 'SHELL32.dll,316'
      $Value1 = 'Tools'
      $Value2 = 'Bottom'
      $Value3 = ''
      $Value4 = ''
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = 'SubCommands'
      $Value0 = 'SHELL32.dll,32'
      $Value1 = 'Cleanup'
      $Value2 = ''
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\    ClearClipboard'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\    ClearClipboard\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'SHELL32.dll,54'
      $Value1 = 'Clear Clipboard'
      $Value2 = 'cmd /c echo off | clip'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\   RamCleaner'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\   RamCleaner\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'SHELL32.dll,12'
      $Value1 = 'Ram Cleaner'
      $Value2 = 'powershell Start-Process powershell -Verb RunAs {"%USERPROFILE%\Documents\RamCleaner\EmptyStandbyList.exe"}'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $Path0 = "$($env:TEMP)"
      $Path1 = "$($env:USERPROFILE)"
      New-Item -ItemType Directory -Path "$Path1\Documents\RamCleaner"
      Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/RamCleaner.zip" -outfile "$Path0\RamCleaner.zip"
      Expand-Archive "$Path0\RamCleaner.zip" -DestinationPath "$Path1\Documents\RamCleaner"
      Remove-Item "$Path0\RamCleaner.zip"
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\  FileCleanup'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\  FileCleanup\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'SHELL32.dll,4'
      $Value1 = 'File Cleanup'
      $Value2 = 'cmd /c echo off | start explorer "file:C:\Windows\Temp" | start explorer "file:%TEMP%" | start cleanmgr'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\ RecycleBin'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\ RecycleBin\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'SHELL32.dll,31'
      $Value1 = 'Recycle Bin'
      $Value2 = 'explorer.exe shell:RecycleBinFolder'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         SensMatcher'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         SensMatcher\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = '%USERPROFILE%\Documents\SensMatcher\SensitivityMatcher.exe'
      $Value1 = 'Sens Matcher'
      $Value2 = 'cmd /c cd %USERPROFILE%\Documents\SensMatcher && start SensitivityMatcher.exe'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $Path0 = "$($env:TEMP)"
      $Path1 = "$($env:USERPROFILE)"
      New-Item -ItemType Directory -Path "$Path1\Documents\SensMatcher"
      Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/SensMatcher.zip" -outfile "$Path0\SensMatcher.zip"
      Expand-Archive "$Path0\SensMatcher.zip" -DestinationPath "$Path1\Documents\SensMatcher"
      Remove-Item "$Path0\SensMatcher.zip"
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\        Regedit'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\        Regedit\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'regedit.exe'
      $Value1 = 'Regedit'
      $Value2 = 'regedit'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      HWiNFO'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      HWiNFO\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = '%USERPROFILE%\Documents\HWiNFO\HWiNFO64.exe'
      $Value1 = 'HWiNFO'
      $Value2 = '%USERPROFILE%\Documents\HWiNFO\HWiNFO64.exe'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $Path0 = "$($env:TEMP)"
      $Path1 = "$($env:USERPROFILE)"
      New-Item -ItemType Directory -Path "$Path1\Documents\HWiNFO"
      Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/HWiNFO.zip" -outfile "$Path0\HWiNFO.zip"
      Expand-Archive "$Path0\HWiNFO.zip" -DestinationPath "$Path1\Documents\HWiNFO"
      Remove-Item "$Path0\HWiNFO.zip"
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      CMD'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      CMD\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'cmd.exe'
      $Value1 = 'CMD'
      $Value2 = 'powershell Start-Process cmd -Verb RunAs'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\     PowerShell'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\     PowerShell\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'powershell.exe'
      $Value1 = 'PowerShell'
      $Value2 = 'powershell Start-Process powershell -Verb RunAs'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\    Autoruns'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\    Autoruns\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = "%USERPROFILE%\Documents\Autoruns\Autoruns64.exe"
      $Value1 = 'Autoruns'
      $Value2 = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Autoruns\Autoruns64.exe'"
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $Path0 = "$($env:TEMP)"
      $Path1 = "$($env:USERPROFILE)"
      New-Item -ItemType Directory -Path "$Path1\Documents\Autoruns"
      Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Autoruns.zip" -outfile "$Path0\Autoruns.zip"
      Expand-Archive "$Path0\Autoruns.zip" -DestinationPath "$Path1\Documents\Autoruns"
      Remove-Item "$Path0\Autoruns.zip"
      $Path0 = 'C:\Program Files\KeePass Password Safe 2'
      If ((Test-Path $Path0)) {
        $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\   KeePass'
        $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\   KeePass\Command'
        $Name0 = 'Icon'
        $Name1 = 'MUIVerb'
        $Name2 = '(Default)'
        $Value0 = '%USERPROFILE%\Documents\KeePass\KeePass.exe'
        $Value1 = 'KeePass'
        $Value2 = '%USERPROFILE%\Documents\KeePass\KeePass.exe'
        New-Item -Path $RegistryPath0 -Force | Out-Null
        New-Item -Path $RegistryPath1 -Force | Out-Null
        New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      }
    }
  }
  Function Tools-Revert {
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools'
    $Path0 = "$($env:USERPROFILE)"
    If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
      Remove-Item "$Path0\Documents\RamCleaner" -Recurse -ErrorAction SilentlyContinue
      Remove-Item "$Path0\Documents\SensMatcher" -Recurse -ErrorAction SilentlyContinue
      Remove-Item "$Path0\Documents\HWiNFO" -Recurse -ErrorAction SilentlyContinue
      Remove-Item "$Path0\Documents\Autoruns" -Recurse -ErrorAction SilentlyContinue
      Remove-Item "$Path0\Documents\KeePass" -Recurse -ErrorAction SilentlyContinue
    }
  }
  Function File-Explorer {
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer'
    If (-NOT (Test-Path $RegistryPath0)) {
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = 'Position'
      $Name3 = 'SeparatorBefore'
      $Name4 = 'SubCommands'
      $Value0 = 'explorer.exe'
      $Value1 = 'File Explorer'
      $Value2 = 'Bottom'
      $Value3 = ''
      $Value4 = ''
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\        Everything'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\        Everything\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = '%USERPROFILE%\Documents\Everything\Everything.exe'
      $Value1 = 'Everything'
      $Value2 = '%USERPROFILE%\Documents\Everything\Everything.exe'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $Path0 = "$($env:TEMP)"
      $Path1 = "$($env:USERPROFILE)"
      New-Item -ItemType Directory -Path "$Path1\Documents\Everything"
      Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Everything.zip" -outfile "$Path0\Everything.zip"
      Expand-Archive "$Path0\Everything.zip" -DestinationPath "$Path1\Documents\Everything"
      Remove-Item "$Path0\Everything.zip"
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\      Desktop'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\      Desktop\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'imageres.dll,174'
      $Value1 = 'Desktop'
      $Value2 = 'explorer %USERPROFILE%\Desktop'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\     Documents'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\     Documents\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'imageres.dll,107'
      $Value1 = 'Documents'
      $Value2 = 'explorer %USERPROFILE%\Documents'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\    Downloads'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\    Downloads\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'imageres.dll,175'
      $Value1 = 'Downloads'
      $Value2 = 'explorer %USERPROFILE%\Downloads'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\   Videos'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\   Videos\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'imageres.dll,178'
      $Value1 = 'Videos'
      $Value2 = 'explorer %USERPROFILE%\Videos'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\  Music'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\  Music\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'imageres.dll,103'
      $Value1 = 'Music'
      $Value2 = 'explorer %USERPROFILE%\Music'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
      $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\ Pictures'
      $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\ Pictures\Command'
      $Name0 = 'Icon'
      $Name1 = 'MUIVerb'
      $Name2 = '(Default)'
      $Value0 = 'imageres.dll,108'
      $Value1 = 'Pictures'
      $Value2 = 'explorer %USERPROFILE%\Pictures'
      New-Item -Path $RegistryPath0 -Force | Out-Null
      New-Item -Path $RegistryPath1 -Force | Out-Null
      New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
      New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force
    }
  }
  Function File-Explorer-Revert {
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer'
    $Path0 = "$($env:USERPROFILE)"
    If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
      Remove-Item "$Path0\Documents\Everything" -Recurse -ErrorAction SilentlyContinue
    }
  }
  Function Editing {
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing'
    If (-NOT (Test-Path $RegistryPath0)) {
      $Path0 = 'C:\Program Files\Adobe'
      If ((Test-Path $Path0)) {
        $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing'
        $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell'
        $Name0 = 'Icon'
        $Name1 = 'MUIVerb'
        $Name2 = 'Position'
        $Name3 = 'SeparatorBefore'
        $Name4 = 'SubCommands'
        $Value0 = 'SHELL32.dll,195'
        $Value1 = 'Editing'
        $Value2 = 'Bottom'
        $Value3 = ''
        $Value4 = ''
        New-Item -Path $RegistryPath0 -Force | Out-Null
        New-Item -Path $RegistryPath1 -Force | Out-Null
        New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force
      }
      $Path0 = 'C:\Program Files\Blackmagic Design'
      If ((Test-Path $Path0)) {
        $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing'
        $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell'
        $RegistryPath2 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell\    DaVinci'
        $RegistryPath3 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell\    DaVinci\Command'        
        $Name0 = 'Icon'
        $Name1 = 'MUIVerb'
        $Name2 = 'Position'
        $Name3 = 'SeparatorBefore'
        $Name4 = 'SubCommands'
        $Name5 = '(Default)'
        $Value0 = 'SHELL32.dll,195'
        $Value1 = 'Editing'
        $Value2 = 'Bottom'
        $Value3 = ''
        $Value4 = ''
        $Value5 = 'C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe'
        $Value6 = 'DaVinci'
        $Value7 = '"C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"'
        New-Item -Path $RegistryPath0 -Force | Out-Null
        New-Item -Path $RegistryPath1 -Force | Out-Null
        New-Item -Path $RegistryPath2 -Force | Out-Null
        New-Item -Path $RegistryPath3 -Force | Out-Null
        New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath2 -Name $Name0 -Value $Value5 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath2 -Name $Name2 -Value $Value6 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath2 -Name $Name5 -Value $Value7 -PropertyType String -Force
      }
      $Path0 = 'C:\Program Files\Adobe\Adobe Premiere Pro 2023'
      If ((Test-Path $Path0)) {
        $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell\   Premiere'
        $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell\   Premiere\Command'
        $Name0 = 'Icon'
        $Name1 = 'MUIVerb'
        $Name2 = '(Default)'
        $Value0 = 'C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe'
        $Value1 = 'Premiere'
        $Value2 = '"C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe"'
        New-Item -Path $RegistryPath0 -Force | Out-Null
        New-Item -Path $RegistryPath1 -Force | Out-Null
        New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      }
      $Path0 = 'C:\Program Files\Adobe\Adobe Photoshop 2023'
      If ((Test-Path $Path0)) {
        $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell\  Photoshop'
        $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing\Shell\  Photoshop\Command'
        $Name0 = 'Icon'
        $Name1 = 'MUIVerb'
        $Name2 = '(Default)'
        $Value0 = 'C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe'
        $Value1 = 'Photoshop'
        $Value2 = '"C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe"'
        New-Item -Path $RegistryPath0 -Force | Out-Null
        New-Item -Path $RegistryPath1 -Force | Out-Null
        New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      }
      $Path0 = 'C:\Program Files\Adobe\Adobe After Effects 2023'
      If ((Test-Path $Path0)) {
        $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\ AfterEffects'
        $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\ AfterEffects\Command'
        $Name0 = 'Icon'
        $Name1 = 'MUIVerb'
        $Name2 = '(Default)'
        $Value0 = 'C:\Program Files\Adobe\Adobe After Effects 2023\AfterFX.exe'
        $Value1 = 'After Effects'
        $Value2 = '"C:\Program Files\Adobe\Adobe After Effects 2023\AfterFX.exe"'
        New-Item -Path $RegistryPath0 -Force | Out-Null
        New-Item -Path $RegistryPath1 -Force | Out-Null
        New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
        New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force
      }
    }
  }
  Function Editing-Revert {
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Editing'
    If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
    }
  }
  Function Remove-Display-Personalize {
    $Path0 = "$($env:TEMP)"
    $Path1 = "$($env:USERPROFILE)"
    iwr -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/NSudo.zip" -outfile "$Path0\NSudo.zip"
    iwr -uri "https://raw.githubusercontent.com/bhopdusty/context-menus/main/files/Other/Remove%20Display%20Settings%20and%20Personalize%20from%20Context%20Menu.reg" -outfile "$Path1\Desktop\RemoveDisplayAndPersonalize.reg"
    iwr -uri "https://raw.githubusercontent.com/bhopdusty/context-menus/main/files/Other/readme.txt" -outfile "$Path0\readme.txt"
    Expand-Archive "$Path0\NSudo.zip" -DestinationPath "$Path0\NSudo"
    Remove-Item "$Path0\NSudo.zip"
    Invoke-Item -Path "$Path0\NSudo\NSudo Launcher\Nsudo.bat"
    Invoke-Item -Path "$Path0\readme.txt"
    Write-Warning "Delete Temp Files Afterwards"
  }
  Function Remove-Display-Personalize-Revert {
    $Path0 = "$($env:USERPROFILE)"
    iwr -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/Add%20Display%20and%20Personalize%20to%20Context%20Menu.reg" -outfile "$Path0\Desktop\AddDisplayAndPersonalize.reg"
  }
Export-ModuleMember * -Alias *
})) | Import-Module -DisableNameChecking -Global