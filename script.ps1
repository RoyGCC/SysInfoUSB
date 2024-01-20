echo " "
echo "Hostname: "
hostname
echo " "
echo "Marca y modelo: "
wmic csproduct get name,identifyingnumber
echo "Disco: "
wmic diskdrive get size
echo "Ram info: "
wmic memorychip get capacity
echo "CPU info: "
wmic cpu get name
echo "SO info: "
wmic OS get name
echo "Direccion MAC: "
getmac
echo " "
echo "Monitor info: "
echo " "
$Monitors = Get-WmiObject WmiMonitorID -Namespace root\wmi
$Monitores=1
ForEach ($Monitor in $Monitors)
{
	$Manufacturer = ($Monitor.ManufacturerName -notmatch 0 | ForEach{[char]$_}) -join ""
	$Name = ($Monitor.UserFriendlyName -notmatch 0 | ForEach{[char]$_}) -join ""
	$Serial = ($Monitor.SerialNumberID -notmatch 0 | ForEach{[char]$_}) -join ""
	
	Write-Host "Monitor "$Monitores":"
	echo $Manufacturer $Name" (Marca y modelo)" $Serial" (No. Serie)"
	echo " "
	$Monitores = $Monitores + 1
}
echo " "
echo " "
echo "PC hacked. sysinfousb terminated sucessfully!"
echo " "
echo " "
pause;
