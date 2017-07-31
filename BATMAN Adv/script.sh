#For BATMAN ADV client
modprobe batman-adv

#add the interface to ad-hoc network

#ifconfig wlo1 down

#Recommended MTU for batman-adv is 1560
ifconfig wlo1 mtu 1560
#ifconfig wlo1 up

echo "-------------------------"
echo

batctl if add wlo1

ifconfig wlo1 up

ip link set up dev wlo1
ip link set up dev bat0

batctl if

sudo avahi-autoipd bat0
