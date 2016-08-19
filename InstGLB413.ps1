#Check for Windows 7 sp1
$os=get-wmiobject -class Win32_OperatingSystem
Switch -Regex ($os.version)
{
   "6.1"
         {if($os.producttype -eq 1)
             {
                 #Windows 7.1
                  $dnfDir='hklm:\SOFTWARE\Microsoft\NET Framework Setup\NDP'
                  $v4Dir="$dnfDir\v4\Full"
                  if (Get-ItemProperty -Path $v4Dir -ErrorAction Silentlycontinue)
                  {
                       $version=(Get-ItemProperty -Path $v4Dir -ErrorAction Silentlycontinue).release
                       $version
                       if ($version -lt '379893')
                       {
                            Write-Host "DotNETFramework 4.5 Not Installed"
                            $dotProg = "\\glbmdt01\deploymentshare$\Applications\DOTNETFRAMEWORK\NDP452-KB2901907-x86-x64-AllOS-ENU.exe"
                            $dotArgs = " /q /norestart"
                            start-process $dotProg  "$dotArgs" -Wait
                       }
                  }
                  
                  
             }
             
         }
    DEFAULT {"Version not listed"}
}
#checking for 32 bit or 64 bit os
$GLBINSTDIR=(${env:ProgramFiles(x86)},${env:ProgramFiles} -ne $null)[0]
$GLBINSTDIR=$GLBINSTDIR+"\Exact path\Product\"
$GLBINSTDIR
$Program="\\servername\product\cdset\Setup.exe"
$arguments=' /S:2 /I:'+'"'+ $GLBINSTDIR+'"'
start-process "$Program" "$arguments" -Wait 
write-host 'Completed'
<#
if ($GLBINSTDIR="C:\Program Files (x86)\Product") {
& "\\servername\software path\cdset\Setup.exe" /S:2 /I:"C:\Program Files (x86)\Software path\Product"
}
#>
