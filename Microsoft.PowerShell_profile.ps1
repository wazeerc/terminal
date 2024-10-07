# Oh My Posh:
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config ~\mnml.omp.json | Invoke-Expression

# Auto Complete
Set-PSReadLineOption -PredictionSource History

# Terminal Icons
Import-Module -Name Terminal-Icons
