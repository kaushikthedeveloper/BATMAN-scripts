#This is the iperf3 Client

#./iperf3_sender_tcp_static.sh 2 169.254.0.1	#recieving static TCP @ 2 with IP address 169.254.0.1

#provide IP Address
if [ $# -ne 2 ]
then
	echo "input arg : \"static\" or \"moving\" and System reciever number along with IP address and test number"
	echo "Ex : ./iperf3_sender_tcp_static.sh 2 169.254.0.1               #recieving static TCP @ 2 with IP address 169.254.0.1"
	exit
fi

#Run it 10 times
for i in `seq 1 1 10`
do
	echo "TEST : $i" >> static"$1"ClientTCP"$2"
	echo "TEST : $i"

	#Run iperf3 as Client for a duration of 15sec from wlo1 interface
	iperf3 wlo1 -c $2 -i 15 -t 15 -f KBytes >> static"$1"ClientTCP"$2"

	#\n
	echo >> static"$1"ClientTCP"$2"

	#induce a 3sec time delay between each test so as to not cause any packets collision
	sleep 3
done
