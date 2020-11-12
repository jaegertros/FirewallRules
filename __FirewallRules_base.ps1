New-NetFirewallRule -DisplayName 'HTTP-Inbound' -Profile @('Domain', 'Private') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('80', '443')

New-NetFirewallRule -DisplayName "Allow Messenger" -Direction Inbound -Program "C:\Program Files (x86)\Messenger\msmsgs.exe" -RemoteAddress LocalSubnet -Action Allow

New-NetFirewallRule -DisplayName "Block Outbound Port 80" -Direction Outbound -LocalPort 80 -Protocol TCP -Action Block

New-NetFirewallRule -DisplayName "Allow Authenticated Messenger" -Direction Inbound -Program "C:\Program Files (x86)\Messenger\msmsgs.exe" -Authentication Required -Action Allow