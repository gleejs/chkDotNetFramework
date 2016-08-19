dism /Online /Enable-Feature /FeatureName:NextFx3
$argsdnf=" /q /Norestart"
Start-Process "\\servername\deploymentshare$\Applications\DOTNETFRAMEWORK\NDP452-KB2901907-x86-x64-AllOS-ENU" "$argsdnf" -wait
