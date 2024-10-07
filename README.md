# Setting up Windows Terminal and Oh My Posh

## Step 1: Download Windows Terminal
- Install Windows Terminal from the Microsoft Store or download it from the [official GitHub repo](https://github.com/microsoft/terminal).
- Download Powershell from [official GitHub repo](https://github.com/PowerShell/PowerShell/releases/).

## Step 2: Update Settings in `settings.json`
1. Open Windows Terminal.
2. Navigate to Settings > Open JSON file.
3. Paste the contents of [settings.json](https://github.com/wazeerc/terminal/blob/main/settings.json) into the `settings.json` file.

## Step 3: Download Nerd Fonts
- Download the [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono) from the [Nerd Fonts GitHub repo](https://github.com/ryanoasis/nerd-fonts).
- Install the font on your system.

## Step 4: Download and Install Winget
- Get the latest version of Winget from the [GitHub repo](https://github.com/microsoft/winget-cli/releases).
- Install it on your system.

## Step 5: Install Oh My Posh
- Open a PowerShell terminal and run the following command to install Oh My Posh:
```
winget install JanDeDobbeleer.OhMyPosh -s winget
```
## Step 6: Create PowerShell Profile
1. Open a PowerShell terminal and check if a profile exists by running:
```
Test-Path $PROFILE
```
2. If the output is False, create a new profile by running:
```
New-Item -Path $PROFILE -Type File -Force
```
3. Open the profile file in Notepad:
```
notepad $PROFILE
```
4. Paste the contents of [Microsoft.PowerShell_profile.ps1](https://github.com/wazeerc/terminal/blob/main/Microsoft.PowerShell_profile.ps1) into the profile file.
5. Save and close 👏
