# Iran-IP-list-for-Mikrotik
This script will fetch latest Iran IP list and add it to an address list named " Iran-IP"

Run this script from your Mikrotik!

:local url "https://raw.githubusercontent.com/persian85/Iran-IP-list-for-Mikrotik/main/ir_ips_v4.rsc"

:local fileName "ir_ips_v4.rsc"

/tool fetch url=$url mode=https dst-path=$fileName

:delay 3s

:if ([:len [/file find name=$fileName]] > 0) do={

/import file-name=$fileName

/file remove $fileName

:log info "Iran IP List from persian85 repository updated successfully."

} else={

:log error "Failed to download ir_ips_v4.rsc from GitHub!"

}
