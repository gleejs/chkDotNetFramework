$osB=(get-wmiobject -Class Win32_OperatingSystem).OSArchitecture
$osB
If ($osB="32-bit")
{
   $ProgramDIR="C:\Program Files"
}
If ($osB="64-bit")
{
   $ProgramDIR="c:\Program Files (x86)"
}
$dnfDirectory='hklm:\SOFTWARE\Microsoft\NET Framework Setup\NDP\'
$v4DirectoryEx="$dnfDirectory\v4\Full"
if (Test-Path $v4Directory)
{
   $version=Get-ItemProperty $v4Directory -name Version | select -expand Version
   $version
}