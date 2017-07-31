#This is the iperf3 Client

#./iperf3_sender_tcp_moving.sh 2 169.254.0.1 3              #recieving Moving TCP @ 2 with IP address 169.254.0.1 for Test3

#provide IP Address
if [ $# -ne 3 ]
then
	echo "input arg : \"static\" or \"moving\" and System reciever number along with IP address and test number"
	echo "Ex : ./iperf3_sender_udp_moving.sh 2 169.254.0.1 3              #recieving static TCP @ 2 with IP address 169.254.0.1 for Test3"
	exit
fi

#Run it 10 times : cancelled (do it 5 times)
#for i in `seq 1 1 10`
#do
	echo "TEST : $3" >> moving"$1"ClientTCP"$2"
	echo "TEST : $3"

	#Run iperf3 as Client for a duration of 15sec from bat0 interface
	iperf3 bat0 -c $2 -u -i 15 -t 15 -f KBytes >> moving"$1"ClientTCP"$2"

	#\n
	echo >> moving"$1"ClientTCP"$2"
#done
