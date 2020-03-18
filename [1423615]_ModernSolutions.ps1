Function KillThatProcess ([string]$n="notepad.exe"){

$x=Get-Process -Name "$n"
 Write-host “There are $x processes with the name N, proceed? Y/N”
$answer=Read-Host

if($answer.ToUpper()="Y"){
Set-Alias -Name $n -Value Get-ChildItem
Stop-Process -Name "$n"
}
}
function Bamboozle($path="C:\Users\wyy84\Documents"){
$RANDOM=[char]65,[char]66,[char]67,[char]68,[char]69,[char]70,[char]71,[char]72,[char]73,[char]74,[char]75,[char]76,[char]77,[char]78,[char]79,[char]80,[char]81,[char]82,[char]83,[char]84,[char]85,[char]86,[char]87,[char]88,[char]89,[char]90 | Get-Random
Write-Host -ForegroundColor Red "Letter" $RANDOM "has been chosen"
$removefile=Get-ChildItem -Path $path -Recurse -Filter "$RANDOM*"|remove-item -Path $path -whatif
}
