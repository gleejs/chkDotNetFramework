$srvName="Servername"
Write-Host "Installing KB976932"
$dotProg="\\$srvName\Deploymentshare$\Applications\windows7sp1hf\windows6.1-KB976932-X86.exe"
$dotArgs=" /quiet /norestart"
start-process $dotProg  "$dotArgs" -Wait
