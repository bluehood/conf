# Defined in /tmp/fish.ximXqR/connect_bose.fish @ line 1
function disconnect_bose
   bluetoothctl disconnect 04:52:C7:E5:2E:5F
   bluetoothctl power off
end
