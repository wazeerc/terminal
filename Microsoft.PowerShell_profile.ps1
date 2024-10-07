# Oh My Posh:
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/bubbles.omp.json' | Invoke-Expression

# Auto Complete
Set-PSReadLineOption -PredictionSource History

# Terminal Icons
Import-Module -Name Terminal-Icons
