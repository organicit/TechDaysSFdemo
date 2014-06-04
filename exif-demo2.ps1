cd C:\temp\demo_img

$exfRaw = exiftool DGRM-Splunk-HUNK-Multi-Factor-Authentication-103.jpg
#$exfRaw -split " : "

$hTable = @{}


foreach($img in $exfRaw)
{

   $exfSplit = $img -split " : "
   $hTable.add($exfSplit[0].TrimEnd(),$exfSplit[1])
   #$exfSplit
}

# take HT and dot notate to the key value quoting if key contains spaces
$hTable
$exifObj = New-Object -TypeName PSObject
$exifObj|Add-Member -MemberType NoteProperty -Name curFileName -Value ($hTable.'File Name')
$exifObj|Add-Member -MemberType NoteProperty -Name dateCreated -Value ($hTable.'File Creation Date/Time')

$exifObj