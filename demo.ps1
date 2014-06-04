<#
 #  Tech Days SF 2014
 #  Eric Courville
 #  @_organicit
 #  http://www.organicit.org
#>

$utils = "C:\utilities\SysinternalsSuite\"
cd $utils
#Demo1  Sysinternals - PSInfo.exe

#capture exe output
$psiOut = psinfo.exe /accepteula 2> $null|select -Skip 1

$PSIObj = $psiOut|foreach {
                    $line = $_ -split "\s\s+",5
                    New-Object -Type psobject -Property @{
                    psiKey = $line[0]
                    psiVal = $line[1]
                    }
}
$PSIObj[0].psiKey