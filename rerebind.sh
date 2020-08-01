BIND_BDF1="0000:00:14.0"
BIND_BDF2="0000:00:14.2"

echo 1 > /sys/bus/pci/devices/$BIND_BDF1/remove
echo 1 > /sys/bus/pci/devices/$BIND_BDF2/remove
echo 1 > /sys/bus/pci/rescan
