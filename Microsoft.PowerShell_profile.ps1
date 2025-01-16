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

## Grep Alternative for Windows
Set-Alias find findstr

## Git Aliases
function Test-GitRepository {
    try {
        if (-not (Test-Path -Path ".git")) {
            Write-Error "You're not in a Git Repository! 🤬" -ErrorAction Stop
            return $false
        }
        return $true
    }
    catch {
        Write-Host "Error: $_"
        return $false
    }
}

### Git status
function git-status {
    if (Test-GitRepository) { git status }
}
Set-Alias -Name gs -Value git-status

### Git show one line, five most recent commits
function git-log5 {
    if (Test-GitRepository) { git log -n 5 --oneline }
}
Set-Alias -Name g5 -Value git-log5

### Git rebase main
function git-rebase-main {
    if (Test-GitRepository) { git rebase main }
}
Set-Alias -Name grm -Value git-rebase-main
