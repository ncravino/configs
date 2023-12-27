# Windows Configurations

## Set Wi-Fi priority order
When we have multiple Wi-Fi networks in the same place it's useful to set their priority so the computer will connect to the one we actually want first, and only use the others if that one is not available.
A common example is to use 5Ghz networks when near the AP and 2.4Ghz otherwise.

Using powershell we can use netsh to check and set these priorities.

### Use netsh to get the current order

```netsh wlan show profiles```

This command will show a list of profiles and networks for all wlan interfaces, in their current order:
<img width="338" alt="image" src="https://github.com/ncravino/configs/assets/12738717/f9cf5b07-70aa-40e5-b360-70b65bb6de67">

### Use netsh to set the priority order
The following command can be used to set the order, and the previous command should show the profiles in the new order.

```netsh wlan set profileorder name="YOUR_SSID" interface="Wi-Fi" priority=1```

```netsh wlan set profileorder name="ANOTHER_SSID" interface="Wi-Fi" priority=2```

The priority starts at 1, the interface names are visible when listing the profiles (usually Wi-Fi if just one), and the name parameter is just the SSID.
