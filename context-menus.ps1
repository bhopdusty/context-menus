Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object System.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(445,700)
$Form.Text                       = "Context Menu Shortcuts"
$Form.StartPosition              = 'CenterScreen'
$Form.FormBorderStyle            = 'FixedSingle'
$Form.MinimizeBox                = $false
$Form.MaximizeBox                = $false
$Form.ShowIcon                   = $false
$Form.TopMost                    = $false
$Form.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Tools                           = New-Object System.Windows.Forms.Checkbox
$Tools.Text                      = "Tools"
$Tools.Width                     = 85
$Tools.Height                    = 32
$Tools.Location                  = New-Object System.Drawing.Point(4,4)
$Tools.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Tools.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Tools.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$ToolsRevert                           = New-Object System.Windows.Forms.Checkbox
$ToolsRevert.Text                      = "revert"
$ToolsRevert.Width                     = 80
$ToolsRevert.Height                    = 32
$ToolsRevert.Location                  = New-Object System.Drawing.Point(16,36)
$ToolsRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$ToolsRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$ToolsRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$FileExplorer                    = New-Object System.Windows.Forms.Checkbox
$FileExplorer.Text               = "File Explorer"
$FileExplorer.Width              = 145
$FileExplorer.Height             = 32
$FileExplorer.Location           = New-Object System.Drawing.Point(266,4)
$FileExplorer.Font               = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$FileExplorer.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$FileExplorer.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$FileExplorerRevert                    = New-Object System.Windows.Forms.Checkbox
$FileExplorerRevert.Text               = "revert"
$FileExplorerRevert.Width              = 80
$FileExplorerRevert.Height             = 32
$FileExplorerRevert.Location           = New-Object System.Drawing.Point(278,36)
$FileExplorerRevert.Font               = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$FileExplorerRevert.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$FileExplorerRevert.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$CRUToggle                            = New-Object System.Windows.Forms.Checkbox
$CRUToggle.Text                       = "CRU Toggle"
$CRUToggle.Width                      = 135
$CRUToggle.Height                     = 32
$CRUToggle.Location                   = New-Object System.Drawing.Point(4,68)
$CRUToggle.Font                       = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$CRUToggle.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$CRUToggle.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$CRUToggleRevert                            = New-Object System.Windows.Forms.Checkbox
$CRUToggleRevert.Text                       = "revert"
$CRUToggleRevert.Width                      = 80
$CRUToggleRevert.Height                     = 32
$CRUToggleRevert.Location                   = New-Object System.Drawing.Point(16,100)
$CRUToggleRevert.Font                       = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$CRUToggleRevert.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$CRUToggleRevert.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$CRU                            = New-Object System.Windows.Forms.Checkbox
$CRU.Text                       = "CRU"
$CRU.Width                      = 80
$CRU.Height                     = 32
$CRU.Location                   = New-Object System.Drawing.Point(266,68)
$CRU.Font                       = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$CRU.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$CRU.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$CRURevert                            = New-Object System.Windows.Forms.Checkbox
$CRURevert.Text                       = "revert"
$CRURevert.Width                      = 80
$CRURevert.Height                     = 32
$CRURevert.Location                   = New-Object System.Drawing.Point(278,100)
$CRURevert.Font                       = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$CRURevert.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$CRURevert.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$OBSPortable                           = New-Object System.Windows.Forms.Checkbox
$OBSPortable.Text                      = "OBS Portable"
$OBSPortable.Width                     = 155
$OBSPortable.Height                    = 32
$OBSPortable.Location                  = New-Object System.Drawing.Point(4,128)
$OBSPortable.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$OBSPortable.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$OBSPortable.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$OBSPortableRevert                           = New-Object System.Windows.Forms.Checkbox
$OBSPortableRevert.Text                      = "revert"
$OBSPortableRevert.Width                     = 80
$OBSPortableRevert.Height                    = 32
$OBSPortableRevert.Location                  = New-Object System.Drawing.Point(16,160)
$OBSPortableRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$OBSPortableRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$OBSPortableRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$OBS                            = New-Object System.Windows.Forms.Checkbox
$OBS.Text                       = "OBS"
$OBS.Width                      = 80
$OBS.Height                     = 32
$OBS.Location                   = New-Object System.Drawing.Point(266,128)
$OBS.Font                       = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$OBS.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$OBS.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$OBSRevert                            = New-Object System.Windows.Forms.Checkbox
$OBSRevert.Text                       = "revert"
$OBSRevert.Width                      = 80
$OBSRevert.Height                     = 32
$OBSRevert.Location                   = New-Object System.Drawing.Point(278,160)
$OBSRevert.Font                       = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$OBSRevert.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$OBSRevert.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Adobe                          = New-Object System.Windows.Forms.Checkbox
$Adobe.Text                     = "Adobe"
$Adobe.Width                    = 85
$Adobe.Height                   = 32
$Adobe.Location                 = New-Object System.Drawing.Point(4,192)
$Adobe.Font                     = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Adobe.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Adobe.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$AdobeRevert                          = New-Object System.Windows.Forms.Checkbox
$AdobeRevert.Text                     = "revert"
$AdobeRevert.Width                    = 80
$AdobeRevert.Height                   = 32
$AdobeRevert.Location                 = New-Object System.Drawing.Point(16,224)
$AdobeRevert.Font                     = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$AdobeRevert.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$AdobeRevert.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$YouTubeMusic                           = New-Object System.Windows.Forms.Checkbox
$YouTubeMusic.Text                      = "Youtube Music"
$YouTubeMusic.Width                     = 160
$YouTubeMusic.Height                    = 32
$YouTubeMusic.Location                  = New-Object System.Drawing.Point(266,192)
$YouTubeMusic.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$YouTubeMusic.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$YouTubeMusic.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$YouTubeMusicRevert                           = New-Object System.Windows.Forms.Checkbox
$YouTubeMusicRevert.Text                      = "revert"
$YouTubeMusicRevert.Width                     = 80
$YouTubeMusicRevert.Height                    = 32
$YouTubeMusicRevert.Location                  = New-Object System.Drawing.Point(278,224)
$YouTubeMusicRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$YouTubeMusicRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$YouTubeMusicRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$AppleMusic                           = New-Object System.Windows.Forms.Checkbox
$AppleMusic.Text                      = "Apple Music"
$AppleMusic.Width                     = 145
$AppleMusic.Height                    = 32
$AppleMusic.Location                  = New-Object System.Drawing.Point(4,256)
$AppleMusic.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$AppleMusic.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$AppleMusic.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$AppleMusicRevert                           = New-Object System.Windows.Forms.Checkbox
$AppleMusicRevert.Text                      = "revert"
$AppleMusicRevert.Width                     = 80
$AppleMusicRevert.Height                    = 32
$AppleMusicRevert.Location                  = New-Object System.Drawing.Point(16,288)
$AppleMusicRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$AppleMusicRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$AppleMusicRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Spotify                           = New-Object System.Windows.Forms.Checkbox
$Spotify.Text                      = "Spotify"
$Spotify.Width                     = 90
$Spotify.Height                    = 32
$Spotify.Location                  = New-Object System.Drawing.Point(266,256)
$Spotify.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Spotify.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Spotify.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$SpotifyRevert                           = New-Object System.Windows.Forms.Checkbox
$SpotifyRevert.Text                      = "revert"
$SpotifyRevert.Width                     = 80
$SpotifyRevert.Height                    = 32
$SpotifyRevert.Location                  = New-Object System.Drawing.Point(278,288)
$SpotifyRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$SpotifyRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$SpotifyRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Discord                           = New-Object System.Windows.Forms.Checkbox
$Discord.Text                      = "Discord"
$Discord.Width                     = 100
$Discord.Height                    = 32
$Discord.Location                  = New-Object System.Drawing.Point(4,320)
$Discord.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Discord.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Discord.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$DiscordRevert                           = New-Object System.Windows.Forms.Checkbox
$DiscordRevert.Text                      = "revert"
$DiscordRevert.Width                     = 80
$DiscordRevert.Height                    = 32
$DiscordRevert.Location                  = New-Object System.Drawing.Point(16,352)
$DiscordRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$DiscordRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$DiscordRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Edge                           = New-Object System.Windows.Forms.Checkbox
$Edge.Text                      = "Edge"
$Edge.Width                     = 80
$Edge.Height                    = 32
$Edge.Location                  = New-Object System.Drawing.Point(266,320)
$Edge.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Edge.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Edge.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$EdgeRevert                           = New-Object System.Windows.Forms.Checkbox
$EdgeRevert.Text                      = "revert"
$EdgeRevert.Width                     = 80
$EdgeRevert.Height                    = 32
$EdgeRevert.Location                  = New-Object System.Drawing.Point(278,352)
$EdgeRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$EdgeRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$EdgeRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Chrome                           = New-Object System.Windows.Forms.Checkbox
$Chrome.Text                      = "Chrome"
$Chrome.Width                     = 100
$Chrome.Height                    = 32
$Chrome.Location                  = New-Object System.Drawing.Point(4,384)
$Chrome.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Chrome.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Chrome.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$ChromeRevert                           = New-Object System.Windows.Forms.Checkbox
$ChromeRevert.Text                      = "revert"
$ChromeRevert.Width                     = 80
$ChromeRevert.Height                    = 32
$ChromeRevert.Location                  = New-Object System.Drawing.Point(16,416)
$ChromeRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$ChromeRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$ChromeRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Firefox                           = New-Object System.Windows.Forms.Checkbox
$Firefox.Text                      = "Firefox"
$Firefox.Width                     = 95
$Firefox.Height                    = 32
$Firefox.Location                  = New-Object System.Drawing.Point(266,384)
$Firefox.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Firefox.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$Firefox.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$FirefoxRevert                           = New-Object System.Windows.Forms.Checkbox
$FirefoxRevert.Text                      = "revert"
$FirefoxRevert.Width                     = 80
$FirefoxRevert.Height                    = 32
$FirefoxRevert.Location                  = New-Object System.Drawing.Point(278,416)
$FirefoxRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$FirefoxRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$FirefoxRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$GameLaunchers                           = New-Object System.Windows.Forms.Checkbox
$GameLaunchers.Text                      = "Game Launchers"
$GameLaunchers.Width                     = 178
$GameLaunchers.Height                    = 32
$GameLaunchers.Location                  = New-Object System.Drawing.Point(4,448)
$GameLaunchers.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$GameLaunchers.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$GameLaunchers.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$GameLaunchersRevert                           = New-Object System.Windows.Forms.Checkbox
$GameLaunchersRevert.Text                      = "revert"
$GameLaunchersRevert.Width                     = 80
$GameLaunchersRevert.Height                    = 32
$GameLaunchersRevert.Location                  = New-Object System.Drawing.Point(16,480)
$GameLaunchersRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$GameLaunchersRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$GameLaunchersRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$BufferBloatToggle                           = New-Object System.Windows.Forms.Checkbox
$BufferBloatToggle.Text                      = "Bufferbloat Toggle"
$BufferBloatToggle.Width                     = 190
$BufferBloatToggle.Height                    = 32
$BufferBloatToggle.Location                  = New-Object System.Drawing.Point(266,448)
$BufferBloatToggle.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$BufferBloatToggle.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$BufferBloatToggle.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$BufferBloatToggleRevert                           = New-Object System.Windows.Forms.Checkbox
$BufferBloatToggleRevert.Text                      = "revert"
$BufferBloatToggleRevert.Width                     = 80
$BufferBloatToggleRevert.Height                    = 32
$BufferBloatToggleRevert.Location                  = New-Object System.Drawing.Point(278,480)
$BufferBloatToggleRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$BufferBloatToggleRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$BufferBloatToggleRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$PowerPlanToggle                           = New-Object System.Windows.Forms.Checkbox
$PowerPlanToggle.Text                      = "PowerPlan Toggle"
$PowerPlanToggle.Width                     = 200
$PowerPlanToggle.Height                    = 32
$PowerPlanToggle.Location                  = New-Object System.Drawing.Point(4,512)
$PowerPlanToggle.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$PowerPlanToggle.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$PowerPlanToggle.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$PowerPlanToggleRevert                           = New-Object System.Windows.Forms.Checkbox
$PowerPlanToggleRevert.Text                      = "revert"
$PowerPlanToggleRevert.Width                     = 80
$PowerPlanToggleRevert.Height                    = 32
$PowerPlanToggleRevert.Location                  = New-Object System.Drawing.Point(16,544)
$PowerPlanToggleRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$PowerPlanToggleRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$PowerPlanToggleRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$OverclockToggle                           = New-Object System.Windows.Forms.Checkbox
$OverclockToggle.Text                      = "Overclock Toggle"
$OverclockToggle.Width                     = 200
$OverclockToggle.Height                    = 32
$OverclockToggle.Location                  = New-Object System.Drawing.Point(266,512)
$OverclockToggle.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$OverclockToggle.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$OverclockToggle.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$OverclockToggleRevert                          = New-Object System.Windows.Forms.Checkbox
$OverclockToggleRevert.Text                      = "revert"
$OverclockToggleRevert.Width                     = 80
$OverclockToggleRevert.Height                    = 32
$OverclockToggleRevert.Location                  = New-Object System.Drawing.Point(278,544)
$OverclockToggleRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$OverclockToggleRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$OverclockToggleRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$RemoveDisplayPersonalize                           = New-Object System.Windows.Forms.Checkbox
$RemoveDisplayPersonalize.Text                      = "Remove Display and Personalize"
$RemoveDisplayPersonalize.Width                     = 320
$RemoveDisplayPersonalize.Height                    = 32
$RemoveDisplayPersonalize.Location                  = New-Object System.Drawing.Point(73,576)
$RemoveDisplayPersonalize.Font                      = New-Object System.Drawing.Font('Times New Roman',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$RemoveDisplayPersonalize.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$RemoveDisplayPersonalize.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$RemoveDisplayPersonalizeRevert                           = New-Object System.Windows.Forms.Checkbox
$RemoveDisplayPersonalizeRevert.Text                      = "revert"
$RemoveDisplayPersonalizeRevert.Width                     = 80
$RemoveDisplayPersonalizeRevert.Height                    = 32
$RemoveDisplayPersonalizeRevert.Location                  = New-Object System.Drawing.Point(190,608)
$RemoveDisplayPersonalizeRevert.Font                      = New-Object System.Drawing.Font('Times New Roman',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$RemoveDisplayPersonalizeRevert.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
$RemoveDisplayPersonalizeRevert.BackColor                 = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$Form.Controls.AddRange(@($Tools, $ToolsRevert, $FileExplorer, $FileExplorerRevert, $CRUToggle, $CRUToggleRevert, $CRU, $CRURevert, $OBSPortable, $OBSPortableRevert, $OBS, $OBSRevert, $Adobe, $AdobeRevert, $YouTubeMusic, $YouTubeMusicRevert, $AppleMusic, $AppleMusicRevert, $Spotify, $SpotifyRevert, $Discord, $DiscordRevert, $Edge, $EdgeRevert, $Chrome, $ChromeRevert, $Firefox, $FirefoxRevert, $GameLaunchers, $GameLaunchersRevert, $BufferBloatToggle, $BufferBloatToggleRevert, $PowerPlanToggle, $PowerPlanToggleRevert, $OverclockToggle, $OverclockToggleRevert, $RemoveDisplayPersonalize, $RemoveDisplayPersonalizeRevert))

$Tools.Add_Click({Tools})
$ToolsRevert.Add_Click({Tools-Revert})
$FileExplorer.Add_Click({File-Explorer})
$FileExplorerRevert.Add_Click({File-Explorer-Revert})
$CRUToggle.Add_Click({CRU-Toggle})
$CRUToggleRevert.Add_Click({CRU-Toggle-Revert})
$CRU.Add_Click({CRU})
$CRURevert.Add_Click({CRU-Revert})
$OBSPortable.Add_Click({OBS-Portable})
$OBSPortableRevert.Add_Click({OBS-Portable-Revert})
$OBS.Add_Click({OBS})
$OBSRevert.Add_Click({OBS-Revert})
$Adobe.Add_Click({Adobe})
$AdobeRevert.Add_Click({Adobe-Revert})
$YouTubeMusic.Add_Click({YouTube-Music})
$YouTubeMusicRevert.Add_Click({YouTube-Music-Revert})
$AppleMusic.Add_Click({Apple-Music})
$AppleMusicRevert.Add_Click({Apple-Music-Revert})
$Spotify.Add_Click({Spotify})
$SpotifyRevert.Add_Click({Spotify-Revert})
$Discord.Add_Click({Discord})
$DiscordRevert.Add_Click({Discord-Revert})
$Edge.Add_Click({Edge})
$EdgeRevert.Add_Click({Edge-Revert})
$Chrome.Add_Click({Chrome})
$ChromeRevert.Add_Click({Chrome-Revert})
$Firefox.Add_Click({Firefox})
$FirefoxRevert.Add_Click({Firefox-Revert})
$GameLaunchers.Add_Click({Game-Launchers})
$GameLaunchersRevert.Add_Click({Game-Launchers-Revert})
$BufferBloatToggle.Add_Click({Bufferbloat-Toggle})
$BufferBloatToggleRevert.Add_Click({Bufferbloat-Toggle-Revert})
$PowerPlanToggle.Add_Click({PowerPlan-Toggle})
$PowerPlanToggleRevert.Add_Click({PowerPlan-Toggle-Revert})
$OverclockToggle.Add_Click({Overclock-Toggle})
$OverclockToggleRevert.Add_Click({Overclock-Toggle-Revert})
$RemoveDisplayPersonalize.Add_Click({Remove-Display-Personalize})
$RemoveDisplayPersonalizeRevert.Add_Click({Remove-Display-Personalize-Revert})

Function Tools {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
      New-Item -Path $RegistryPath1 -Force | Out-Null
    }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = 'SubCommands'
  $Value0        = 'SHELL32.dll,32'
  $Value1        = 'Cleanup'
  $Value2        = ''

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\    ClearClipboard'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\    ClearClipboard\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,54'
  $Value1        = 'Clear Clipboard'
  $Value2        = 'cmd /c echo off | clip'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\   RamCleaner'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\   RamCleaner\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,12'
  $Value1        = 'Ram Cleaner'
  $Value2        = 'powershell Start-Process powershell -Verb RunAs {"%USERPROFILE%\Documents\RamCleaner\EmptyStandbyList.exe"}'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\  FileCleanup'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\  FileCleanup\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,4'
  $Value1        = 'File Cleanup'
  $Value2        = 'cmd /c echo off | start explorer "file:C:\Windows\Temp" | start explorer "file:%TEMP%" | start cleanmgr'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\RamCleaner"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/RamCleaner.zip" -outfile "$Path0\RamCleaner.zip"

  Expand-Archive "$Path0\RamCleaner.zip" -DestinationPath "$Path1\Documents\RamCleaner"
  Remove-Item "$Path0\RamCleaner.zip"

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\ RecycleBin'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\          Cleanup\Shell\ RecycleBin\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'SHELL32.dll,31'
  $Value1        = 'Recycle Bin'
  $Value2        = 'explorer.exe shell:RecycleBinFolder'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         SensMatcher'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\         SensMatcher\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\SensMatcher\SensitivityMatcher.exe'
  $Value1        = 'Sens Matcher'
  $Value2        = 'cmd /c cd %USERPROFILE%\Documents\SensMatcher && start SensitivityMatcher.exe'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

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
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'regedit.exe'
  $Value1        = 'Regedit'
  $Value2        = 'regedit'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      HWiNFO'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\      HWiNFO\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\HWiNFO\HWiNFO64.exe'
  $Value1        = 'HWiNFO'
  $Value2        = '%USERPROFILE%\Documents\HWiNFO\HWiNFO64.exe'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

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
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'cmd.exe'
  $Value1        = 'CMD'
  $Value2        = 'powershell Start-Process cmd -Verb RunAs'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\     PowerShell'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\     PowerShell\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'powershell.exe'
  $Value1        = 'PowerShell'
  $Value2        = 'powershell Start-Process powershell -Verb RunAs'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\    Autoruns'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\    Autoruns\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = "%USERPROFILE%\Documents\Autoruns\Autoruns64.exe"
  $Value1        = 'Autoruns'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c %USERPROFILE%\Documents\Autoruns\Autoruns64.exe'"

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Autoruns"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Autoruns.zip" -outfile "$Path0\Autoruns.zip"

  Expand-Archive "$Path0\Autoruns.zip" -DestinationPath "$Path1\Documents\Autoruns"
  Remove-Item "$Path0\Autoruns.zip"

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\   KeePass'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools\Shell\   KeePass\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\KeePass\KeePass.exe'
  $Value1        = 'KeePass'
  $Value2        = '%USERPROFILE%\Documents\KeePass\KeePass.exe'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\KeePass"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/KeePass.zip" -outfile "$Path0\KeePass.zip"

  Expand-Archive "$Path0\KeePass.zip" -DestinationPath "$Path1\Documents\KeePass"
  Remove-Item "$Path0\KeePass.zip"

}

Function Tools-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\             Tools'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }
  
  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\RamCleaner" -Recurse -ErrorAction SilentlyContinue
  Remove-Item "$Path0\Documents\SensMatcher" -Recurse -ErrorAction SilentlyContinue
  Remove-Item "$Path0\Documents\HWiNFO" -Recurse -ErrorAction SilentlyContinue
  Remove-Item "$Path0\Documents\Autoruns" -Recurse -ErrorAction SilentlyContinue
  Remove-Item "$Path0\Documents\KeePass" -Recurse -ErrorAction SilentlyContinue

}

Function File-Explorer {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\        Everything'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\        Everything\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Everything\Everything.exe'
  $Value1        = 'Everything'
  $Value2        = '%USERPROFILE%\Documents\Everything\Everything.exe'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

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
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,174'
  $Value1        = 'Desktop'
  $Value2        = 'explorer %USERPROFILE%\Desktop'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\     Documents'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\     Documents\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,107'
  $Value1        = 'Documents'
  $Value2        = 'explorer %USERPROFILE%\Documents'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\    Downloads'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\    Downloads\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,175'
  $Value1        = 'Downloads'
  $Value2        = 'explorer %USERPROFILE%\Downloads'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\   Videos'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\   Videos\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,178'
  $Value1        = 'Videos'
  $Value2        = 'explorer %USERPROFILE%\Videos'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\  Music'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\  Music\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,103'
  $Value1        = 'Music'
  $Value2        = 'explorer %USERPROFILE%\Music'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\ Pictures'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer\Shell\ Pictures\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'imageres.dll,108'
  $Value1        = 'Pictures'
  $Value2        = 'explorer %USERPROFILE%\Pictures'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

}

Function File-Explorer-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\            FileExplorer'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
    }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\Everything" -Recurse -ErrorAction SilentlyContinue

}

Function CRU-Toggle {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\CRU"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/CRU.zip" -outfile "$Path0\CRU.zip"

  Expand-Archive "$Path0\CRU.zip" -DestinationPath "$Path1\Documents\Toggles\CRU"
  Remove-Item "$Path0\CRU.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\CRU"
  Invoke-Item -Path "$Path1\Documents\Toggles\CRU\readme.txt"

}

Function CRU-Toggle-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRUToggle'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\Toggles\CRU" -Recurse -ErrorAction SilentlyContinue

}

Function CRU {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\   1920x1080'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\   1920x1080\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = '1920x1080'
  $Value2        = '%USERPROFILE%\Documents\Toggles\CRU\1920x1080.bat'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\  1728x1080'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\  1728x1080\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = '1728x1080'
  $Value2        = '%USERPROFILE%\Documents\Toggles\CRU\1728x1080.bat'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\ 1440x1080'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU\Shell\ 1440x1080\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\Toggles\CRU\CRU.exe'
  $Value1        = '1440x1080'
  $Value2        = '%USERPROFILE%\Documents\Toggles\CRU\1440x1080.bat'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\CRU"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/CRU.zip" -outfile "$Path0\CRU.zip"

  Expand-Archive "$Path0\CRU.zip" -DestinationPath "$Path1\Documents\Toggles\CRU"
  Remove-Item "$Path0\CRU.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\CRU"
  Invoke-Item -Path "$Path1\Documents\Toggles\CRU\readme.txt"

}

Function CRU-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\           CRU'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\Toggles\CRU" -Recurse -ErrorAction SilentlyContinue

}

Function QoS {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function OBS-Portable {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\   ReplayBuffer'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\   ReplayBuffer\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\OBS\ReplayBuffer\bin\64bit\obs64.exe'
  $Value1        = 'Replay Buffer'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd %USERPROFILE%\Documents\OBS\ReplayBuffer\bin\64bit && start obs64.exe --startreplaybuffer'"

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\  Recording'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\  Recording\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\OBS\Recording\bin\64bit\obs64.exe'
  $Value1        = 'Recording'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd %USERPROFILE%\Documents\OBS\Recording\bin\64bit && start obs64.exe'"

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\ Streaming'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable\Shell\ Streaming\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = '%USERPROFILE%\Documents\OBS\Streaming\bin\64bit\obs64.exe'
  $Value1        = 'Streaming'
  $Value2        = "powershell Start-Process cmd -Verb RunAs -Argumentlist '/c cd %USERPROFILE%\Documents\OBS\Streaming\bin\64bit && start obs64.exe'"

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\OBS\Recording"
  New-Item -ItemType File -Path "$Path1\Documents\OBS\Recording\Portable_Mode.txt"
  New-Item -ItemType Directory -Path "$Path1\Documents\OBS\ReplayBuffer"
  New-Item -ItemType File -Path "$Path1\Documents\OBS\ReplayBuffer\Portable_Mode.txt"
  New-Item -ItemType Directory -Path "$Path1\Documents\OBS\Streaming"
  New-Item -ItemType File -Path "$Path1\Documents\OBS\Streaming\Portable_Mode.txt"

  Invoke-WebRequest -uri "https://github.com/obsproject/obs-studio/releases/download/29.1.2/OBS-Studio-29.1.2.zip" -outfile "$Path0\Recording.zip"
  Invoke-WebRequest -uri "https://github.com/obsproject/obs-studio/releases/download/29.1.2/OBS-Studio-29.1.2.zip" -outfile "$Path0\ReplayBuffer.zip"
  Invoke-WebRequest -uri "https://github.com/obsproject/obs-studio/releases/download/29.1.2/OBS-Studio-29.1.2.zip" -outfile "$Path0\Streaming.zip"

  Expand-Archive "$Path0\Recording.zip" -DestinationPath "$Path1\Documents\OBS\Recording"
  Remove-Item "$Path0\Recording.zip"
  Expand-Archive "$Path0\ReplayBuffer.zip" -DestinationPath "$Path1\Documents\OBS\ReplayBuffer"
  Remove-Item "$Path0\ReplayBuffer.zip"
  Expand-Archive "$Path0\Streaming.zip" -DestinationPath "$Path1\Documents\OBS\Streaming"
  Remove-Item "$Path0\Streaming.zip"

}

Function OBS-Portable-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBSPortable'
 
  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\OBS" -Recurse -ErrorAction SilentlyContinue

}

Function OBS {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function OBS-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\         OBS'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Adobe {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

  $Path0 = "C:\Program Files\Adobe\Adobe Premiere Pro 2023"

  If ((Test-Path $Path0)) {

    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\   Premiere'
    $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\   Premiere\Command'
    $Name0         = 'Icon'
    $Name1         = 'MUIVerb'
    $Name2         = '(Default)'
    $Value0        = 'C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe'
    $Value1        = 'Premiere'
    $Value2        = '"C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe"'

    If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
     }
    If (-NOT (Test-Path $RegistryPath1)) {
       New-Item -Path $RegistryPath1 -Force | Out-Null
     }

    New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
   New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  }

  $Path1 = "C:\Program Files\Adobe\Adobe Photoshop 2023"

  If ((Test-Path $Path1)) {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\  Photoshop'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\  Photoshop\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe'
  $Value1        = 'Photoshop'
  $Value2        = '"C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe"'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  }

  $Path2 = "C:\Program Files\Adobe\Adobe After Effects 2023"

  If ((Test-Path $Path2)) {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\ AfterEffects'
  $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe\Shell\ AfterEffects\Command'
  $Name0         = 'Icon'
  $Name1         = 'MUIVerb'
  $Name2         = '(Default)'
  $Value0        = 'C:\Program Files\Adobe\Adobe After Effects 2023\AfterFX.exe'
  $Value1        = 'After Effects'
  $Value2        = '"C:\Program Files\Adobe\Adobe After Effects 2023\AfterFX.exe"'

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  }

}

Function Adobe-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\        Adobe'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function YouTube-Music {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

}

Function YouTube-Music-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       YouTubeMusic'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Apple-Music {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Apple-Music-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       AppleMusic'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Spotify {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

}

Function Spotify-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\       Spotify'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Discord {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType ExpandString -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

}

Function Discord-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\      Discord'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Edge {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Edge-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Edge'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Chrome {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Chrome-Revert {


  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Chrome'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Firefox {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType String -Force

}

Function Firefox-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\     Firefox'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Game-Launchers {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name4 -Value $Value4 -PropertyType String -Force

   $Path0 = "C:\Program Files (x86)\Steam"

  If ((Test-Path $Path0)) {
  
    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\   Steam'
    $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\   Steam\Command'
    $Name0         = 'Icon'
    $Name1         = 'MUIVerb'
    $Name2         = '(Default)'
    $Value0        = 'C:\Program Files (x86)\Steam\Steam.exe'
    $Value1        = 'Steam'
    $Value2        = '"C:\Program Files (x86)\Steam\Steam.exe"'

    If (-NOT (Test-Path $RegistryPath0)) {
        New-Item -Path $RegistryPath0 -Force | Out-Null
    }
    If (-NOT (Test-Path $RegistryPath1)) {
       New-Item -Path $RegistryPath1 -Force | Out-Null
     }

    New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  }

  $Path1 = "C:\Program Files (x86)\Battle.net"

  If ((Test-Path $Path1)) {

    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\  BattleNet'
    $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\  BattleNet\Command'
    $Name0         = 'Icon'
    $Name1         = 'MUIVerb'
    $Name2         = '(Default)'
    $Value0        = 'C:\Program Files (x86)\Battle.net\Battle.net Launcher.exe'
    $Value1        = 'Battle Net'
    $Value2        = '"C:\Program Files (x86)\Battle.net\Battle.net Launcher.exe"'

   If (-NOT (Test-Path $RegistryPath0)) {
        New-Item -Path $RegistryPath0 -Force | Out-Null
    }
    If (-NOT (Test-Path $RegistryPath1)) {
       New-Item -Path $RegistryPath1 -Force | Out-Null
     }

    New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  }

  $Path2 = "C:\Program Files (x86)\Epic Games"

  If ((Test-Path $Path2)) {

    $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\ EpicGames'
    $RegistryPath1 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers\Shell\ EpicGames\Command'
    $Name0         = 'Icon'
    $Name1         = 'MUIVerb'
    $Name2         = '(Default)'
    $Value0        = 'C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe'
    $Value1        = 'Epic Games'
    $Value2        = '"C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe"'

    If (-NOT (Test-Path $RegistryPath0)) {
        New-Item -Path $RegistryPath0 -Force | Out-Null
    }
    If (-NOT (Test-Path $RegistryPath1)) {
       New-Item -Path $RegistryPath1 -Force | Out-Null
     }

    New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
    New-ItemProperty -Path $RegistryPath1 -Name $Name2 -Value $Value2 -PropertyType String -Force

  }
  
}

Function Game-Launchers-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\    GameLaunchers'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

}

Function Bufferbloat-Toggle {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\Bufferbloat"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/Bufferbloat.zip" -outfile "$Path0\Bufferbloat.zip"

  Expand-Archive "$Path0\Bufferbloat.zip" -DestinationPath "$Path1\Documents\Toggles\Bufferbloat"
  Remove-Item "$Path0\Bufferbloat.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\Bufferbloat"
  Invoke-Item -Path "$Path1\Documents\Toggles\Bufferbloat\readme.txt"

}

Function Bufferbloat-Toggle-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\   BufferbloatToggle'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\Toggles\Bufferbloat" -Recurse -ErrorAction SilentlyContinue

}

Function PowerPlan-Toggle {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\PowerPlan"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/PowerPlan.zip" -outfile "$Path0\PowerPlan.zip"

  Expand-Archive "$Path0\PowerPlan.zip" -DestinationPath "$Path1\Documents\Toggles\PowerPlan"
  Remove-Item "$Path0\PowerPlan.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\PowerPlan"
  Invoke-Item -Path "$Path1\Documents\Toggles\PowerPlan\readme.txt"

}

Function PowerPlan-Toggle-Revert {


  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\  PowerPlanToggle'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\Toggles\PowerPlan" -Recurse -ErrorAction SilentlyContinue

}

Function Overclock-Toggle {

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

  If (-NOT (Test-Path $RegistryPath0)) {
      New-Item -Path $RegistryPath0 -Force | Out-Null
  }
  If (-NOT (Test-Path $RegistryPath1)) {
     New-Item -Path $RegistryPath1 -Force | Out-Null
   }

  New-ItemProperty -Path $RegistryPath0 -Name $Name0 -Value $Value0 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name1 -Value $Value1 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name2 -Value $Value2 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath0 -Name $Name3 -Value $Value3 -PropertyType String -Force
  New-ItemProperty -Path $RegistryPath1 -Name $Name4 -Value $Value4 -PropertyType ExpandString -Force

  $Path0 = "$($env:TEMP)"
  $Path1 = "$($env:USERPROFILE)"

  New-Item -ItemType Directory -Path "$Path1\Documents\Toggles\Overclock"

  Invoke-WebRequest -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Documents/Toggles/Overclock.zip" -outfile "$Path0\Overclock.zip"

  Expand-Archive "$Path0\Overclock.zip" -DestinationPath "$Path1\Documents\Toggles\Overclock"
  Remove-Item "$Path0\Overclock.zip"

  Invoke-Item -Path "$Path1\Documents\Toggles\Overclock"
  Invoke-Item -Path "$Path1\Documents\Toggles\Overclock\readme.txt"

}

Function Overclock-Toggle-Revert {

  $RegistryPath0 = 'HKLM:\Software\Classes\DesktopBackground\Shell\ OverclockToggle'

  If ((Test-Path $RegistryPath0)) {
      Remove-Item -Path $RegistryPath0 -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
  }

  $Path0 = "$($env:USERPROFILE)"

  Remove-Item "$Path0\Documents\Toggles\Overclock" -Recurse -ErrorAction SilentlyContinue

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

}

Function Remove-Display-Personalize-Revert {

  $Path0 = "$($env:USERPROFILE)"

  iwr -uri "https://github.com/bhopdusty/context-menus/raw/main/files/Other/Add%20Display%20and%20Personalize%20to%20Context%20Menu.reg" -outfile "$Path0\Desktop\AddDisplayAndPersonalize.reg"

}

[void] $form.ShowDialog()