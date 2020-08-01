BIND_PID1="8086 9d2f"
BIND_BDF1="0000:00:14.0"
BIND_PID2="8086 9d31"
BIND_BDF2="0000:00:14.2"

sudo modprobe vfio-pci 
echo "$BIND_PID1" > /sys/bus/pci/drivers/pcieport/new_id
echo "$BIND_BDF1" > /sys/bus/pci/devices/$BIND_BDF1/driver/unbind
echo "$BIND_BDF1" > /sys/bus/pci/drivers/vfio-pci/bind
echo "$BIND_PID1" > /sys/bus/pci/drivers/vfio-pci/remove_id

echo "$BIND_PID2" > /sys/bus/pci/drivers/vfio-pci/new_id
echo "$BIND_BDF2" > /sys/bus/pci/devices/$BIND_BDF2/driver/unbind
echo "$BIND_BDF2" > /sys/bus/pci/drivers/vfio-pci/bind
echo "$BIND_PID2" > /sys/bus/pci/drivers/vfio-pci/remove_id
