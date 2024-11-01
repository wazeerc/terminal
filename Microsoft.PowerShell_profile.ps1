# Oh My Posh:
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config ~\mnml.omp.json | Invoke-Expression

# Auto Complete
Set-PSReadLineOption -PredictionSource History

# Terminal Icons
Import-Module -Name Terminal-Icons

# Aliases:
## Create new Excalidraw in current directory
function New-File {
  param(
    [string]$FileName
  )
  $Path = Join-Path -Path (Get-Location) -ChildPath ("$FileName.excalidraw")
  New-Item -ItemType File -Path  $Path
}

Set-Alias -Name excalidraw -Value New-File

## Delete a folder
function deldir {
    param ($path)
    rmdir -Path $path -Recurse -Force
}
