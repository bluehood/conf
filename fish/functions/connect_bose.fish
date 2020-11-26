# Defined in /tmp/fish.BOqtKq/connect_bose.fish @ line 2
function connect_bose
   bluetoothctl power off
   bluetoothctl power on
   bluetoothctl connect 60:AB:D2:3C:84:27
end
