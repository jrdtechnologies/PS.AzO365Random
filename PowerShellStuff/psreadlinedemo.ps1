<#References
https://github.com/PowerShell/PSReadLine
For version support
https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
and
https://www.youtube.com/watch?v=Q11sSltuTE0&t=300s
I'm using 7.2 PowerShell to show the latest Azure prediction
#>

#code $profile #to edit profile

#https://raw.githubusercontent.com/PowerShell/PSReadLine/master/PSReadLine/SamplePSReadLineProfile.ps1

# Get-Module PSReadLine #2.1 comes with 7.1+
# Find-Module PSReadLine -AllVersions -AllowPrerelease
# Install-Module PSReadLine -RequiredVersion 2.1.0 #need to be elevated for install/update
# Update-Module PSReadLine -AllowPrerelease

#Commands
#Get-PSReadLineKeyHandler
#right arrow to accept moving to end of line
#up and down arrow to move through history
#f8 and shift-f8 scroll down through history based on current characters
#end to move end of line
#ctrl + right arrow to move to next word and ctrl + left to move to previous word

#Get-PSReadLineOption



#Style
# Set Prediction Options:
Set-PSReadLineOption -BellStyle None # Prevent annoying beeping noises
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
#Can also switch by pressing F2!
#To disable
Set-PSReadLineOption -PredictionSource None

##########################################
# OPTIONAL see also DTech.Set-KeyOptions.ps1
# Set custom keys:
# 	Set-PSReadLineKeyHandler -Key Ctrl+d -Function DeleteCharOrExit # Ctrl+D to exit the shell:
# 	Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# 	Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# 	Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# 	Set-PSReadlineKeyHandler -Key Ctrl+Shift+P `
# 		    -BriefDescription CopyPathToClipboard `
# 		    -LongDescription "Copies the current path to the clipboard" `
# 		    -ScriptBlock { (Resolve-Path -LiteralPath $pwd).ProviderPath.Trim() | Set-Clipboard }
            

#Remember that HistoryAndPlugin?
#Find-Module Az.Tools.Predictor -AllowPrerelease

#2.2 has dynamic help
#f1 on a cmdlet to get help then q to quit
#Alt-h on a parameter
