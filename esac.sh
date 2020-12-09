#! /bin/sh

i=1

while [ $i -le 30 ]
do
	echo "$i)" >> /home/preston/Documents/code/arch4all/cas.dat
	let "++i"
done
