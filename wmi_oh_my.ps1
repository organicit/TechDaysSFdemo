

$BIOS = Get-CimInstance -ClassName Win32_bios
$OS = Get-CimInstance -ClassName Win32_OperatingSystem

$object = New-Object -TypeName PSObject
$object|Add-Member -MemberType NoteProperty -Name Version -Value $OS.Version
$object|Add-Member -MemberType NoteProperty -Name OSMan -Value $OS.Manufacturer
$object|Add-Member -MemberType NoteProperty -Name BIOSName -Value $BIOS.Name

write-output $object|Format-List