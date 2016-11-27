$srvName="Win2012R2Dep2"
net stop wuauserv
Write-Host "Installing KB3138612"
$dosProg="\\$srvName\Deploymentshare$\Applications\DOTNETFRAMEWORK\Windows6.1-KB3138612-x64.msu"
$dotArgs=" /quiet /norestart"
wusa $dotProg  "$dotArgs" -Wait