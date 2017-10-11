#testing printing network connections
$connection = netsh wlan show interfaces | Where-Object {$_ -match '^    SSID'}
echo $connection
$strength = netsh wlan show interface | Where-Object{$_ -match 'Signal'}
echo $strength

