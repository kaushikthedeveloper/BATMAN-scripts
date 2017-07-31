#This is the iperf3 Server

#./iperf3_reciever.sh static 2		#recieving static @ 2

if [ $# -ne 2 ]
then
	echo "input arg : \"static\" or \"moving\" with the system reciever number"
	echo "#./iperf3_reciever.sh static 2		#recieving static @ 2"
	exit
fi

echo "SERER TEST : " >> "$1"RecieverValues"$2"
echo "SERVER TEST : "

#Server code
iperf3 -s wlo1 -i 15 -f KBytes >> "$1"RecieverValues"$2"

#empty space
echo >> "$1"RecieverValues"$2"
