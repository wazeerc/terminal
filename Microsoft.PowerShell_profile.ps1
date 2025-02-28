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

## Grep Alternative on Windows
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
function git-log-n {
    param (
        [int]$n
    )
    if (Test-GitRepository) { git log -n $n --oneline }
}
Set-Alias -Name gln -Value git-log-n

### Git rebase main
function git-rebase-main {
    if (Test-GitRepository) { git rebase main }
}
Set-Alias -Name grm -Value git-rebase-main

### Create a new branch from main and switch to it
function new-branch {
    param (
        [string]$branchName
    )
    if (Test-GitRepository) { git checkout -b $branchName main }
}
Set-Alias -Name nb -Value new-branch

### Update local main branch
function git-pull-origin-main {
    if (Test-GitRepository) { git pull origin main }
}
Set-Alias -Name gpom -Value git-pull-origin-main
