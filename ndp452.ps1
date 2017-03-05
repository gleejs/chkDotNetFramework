$srvName="Servername"
$dotProg="\\$srvName\Deploymentshare$\Applications\DOTNETFRAMEWORK\NDP452-KB2901907-x86-x64-AllOS-ENU.exe"
$dotArgs=" /q /norestart"
start-process $dotProg  "$dotArgs" -Wait
