$GLBINSTDIR=(${env:ProgramFiles(x86)},${env:ProgramFiles} -ne $null)[0]
$GLBINSTDIR=$GLBINSTDIR+"\Software path\product\"
$GLBINSTDIR
$Program="\\servername\Software\Product\Setup.exe"
$arguments=' /S:2 /I:'+'"'+ $GLBINSTDIR+'"'
start-process -FilePath "$Program" -ArgumentList "$arguments" -Wait 
<#
if ($GLBINSTDIR="C:\Program Files (x86)\Product") {
& "\\servername\software\cdset\Setup.exe" /S:2 /I:"C:\Program Files (x86)\software path\product"
}
#>
