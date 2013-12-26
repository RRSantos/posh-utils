$scriptsPath = ([System.IO.Path]::GetDirectoryName($MyInvocation.MyCommand.Path))
$shortcuts = '. "' + $scriptsPath + '\posh-shortcuts.ps1"'
$utils = '. "' + $scriptsPath + '\posh-utils.ps1"'
$vim = '. "' + $scriptsPath + '\posh-vim.ps1"'

if (!(Test-Path $profile))
{
	write-host Creating profile "$Profile"
	New-Item -path $profile -type file -force
}

write-host Including scripts on "$Profile"

Add-Content -Path $Profile $shortcuts
Add-Content -Path $Profile $utils
Add-Content -Path $Profile $vim


 
