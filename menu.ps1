:menuLoop while ($true) {
Write-Host "Context Menu Shortcuts"
Write-Host "`tA. Tools"
Write-Host "`tB. File Explorer"
Write-Host "`tC. CRU Toggle"
Write-Host "`tD. CRU"
Write-Host "`tE. OBS Portable"
Write-Host "`tF. OBS"
Write-Host "`tG. Adobe"
Write-Host "`tH. YouTube Music"
Write-Host "`tI. Apple Music"
Write-Host "`tJ. Spotify"
Write-Host "`tK. Discord"
Write-Host "`tL. Edge"
Write-Host "`tM. Chrome"
Write-Host "`tN. Firefox"
Write-Host "`tO. Game Launchers"
Write-Host "`tP. Bufferbloat Toggle"
Write-Host "`tQ. PowerPlan Toggle"
Write-Host "`tR. Overclock Toggle"
Write-Host "`tS. Remove Display and Personalize"
Write-Host "`tT. Exit"
$choice = Read-Host "`nEnter Choice"

switch ($choice) {
  'A'{
  iex(irm bhop.ca/ctmu);tools
}
  'B'{
  iex(irm bhop.ca/ctmu);file-explorer
}
  'C'{
  iex(irm bhop.ca/ctmu);cru-toggle
}
  'D'{
  iex(irm bhop.ca/ctmu);cru
}
  'E'{
  iex(irm bhop.ca/ctmu);obs-portable
}
  'F'{
   iex(irm bhop.ca/ctmu);obs
}
  'G'{
   iex(irm bhop.ca/ctmu);adobe
}
  'H'{
  iex(irm bhop.ca/ctmu);youtube-music
}
  'I'{
  iex(irm bhop.ca/ctmu);apple-music
}
  'J'{
  iex(irm bhop.ca/ctmu);spotify
}
  'K'{
  iex(irm bhop.ca/ctmu);discord
}
  'L'{
  iex(irm bhop.ca/ctmu);edge
}
  'M'{
  iex(irm bhop.ca/ctmu);chrome
}
  'N'{
  iex(irm bhop.ca/ctmu);firefox
}
  'O'{
  iex(irm bhop.ca/ctmu);game-launchers
}
  'P'{
  iex(irm bhop.ca/ctmu);bufferbloat-Toggle
}
  'Q'{
  iex(irm bhop.ca/ctmu);powerplan-toggle
}
  'R'{
  iex(irm bhop.ca/ctmu);overclock-toggle
}
  'S'{
  iex(irm bhop.ca/ctmu);remove-display-personalize
}
  'T'{ break menuLoop }
}
}
