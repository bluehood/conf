# Defined in /tmp/fish.Z1kJ8K/connect_bose.fish @ line 1
function connect_bose
   bluetoothctl power off
   bluetoothctl power on
   bluetoothctl connect 04:52:C7:E5:2E:5F
end
