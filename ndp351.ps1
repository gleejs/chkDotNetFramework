$srvName=“Servername”
$dotProg="\\$srvName\Deploymentshare$\Applications\DOTNETFRAMEWORK\dotnetfx35sp1.exe"
$dotArgs=" /q /norestart"
start-process $dotProg  "$dotArgs" -Wait