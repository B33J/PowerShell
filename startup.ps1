#by bkelley
Get-Date
echo ""
$vfreespace = Get-CimInstance -ClassName Win32_logicaldisk | ForEach-Object {[math]::truncate($_.freespace / 1GB)}
$vdisksize = Get-CimInstance -ClassName Win32_logicaldisk | ForEach-Object {[math]::truncate($_.size / 1GB)}
echo ""
echo "Disk space free/total (in GB)"
echo " $vfreespace/$vdisksize"
echo ""
if ($vfreespace -lt 25) {
echo "DISK SPACE WARNING!"
Read-Host 'Press Enter to continue' | Out-Null
}
echo ""
$connection = netsh wlan show interfaces | Where-Object {$_ -match '^    SSID'}
echo $connection
$strength = netsh wlan show interface | Where-Object{$_ -match 'Signal'}
echo $strength
echo ""
echo ""
echo "https://winhelp2002.mvps.org/hosts.txt status:"
Invoke-WebRequest -outfile $env:temp\hosts.txt -Uri http://winhelp2002.mvps.org/hosts.txt
Select-String -path "$env:temp\hosts.txt" -Pattern "Updated" |select line |ForEach-Object {$_.Line}
Remove-Item $env:temp\hosts.txt
echo ""
echo ""
Start-Sleep -s 2
echo "Good morning, Paul."
Start-Sleep -s 2
echo "What will your first sequence of the day be?"
Start-Sleep -s 3
echo ""
echo "Computer, load up Celery Man please."
Start-Sleep -s 2
echo ""
echo "Yes Paul."
$ie1 = new-object -comobject InternetExplorer.Application 
$ie1.visible = $true 
$ie1.top = 200; $ie1.width = 400; $ie1.height = 600 ; $ie1.Left = 100 
$ie1.navigate("http://i.imgur.com/CmJgL.gif")

$ie2 = new-object -comobject InternetExplorer.Application 
$ie2.visible = $true 
$ie2.top = 400; $ie2.width = 200; $ie2.height = 300 ; $ie2.Left = 500 
$ie2.navigate("http://i.imgur.com/o6mFHTm.gif")
Start-Sleep -s 3
$ie1.Quit()
$ie2.Quit()
Start-Sleep -s 1
echo ""
echo ""
echo "Could you kick up the 4d3d3d3?"
echo ""
Start-Sleep -s 1
echo "Starting Chrome"
Start-Process "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
echo "Starting Outlook"
Start-Process "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
echo "Starting HexChat"
Start-Process "C:\Program Files\HexChat\hexchat.exe"

Start-Sleep -s 5
#end