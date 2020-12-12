#! /bin/sh

i=1

<<comment
while [ $i -le 14 ]
do
	echo "$i)" >> /home/preston/Documents/code/arch4all/cas.dat
	let "++i"
done

comment

while [ $i -le 14 ] 
do
	ZONES=(Africa America Antarctica Arctic Asia Atlantic Australia Brazil Canada Chile Europe Indian Mexico Pacific US)
	echo "[ [ '${ZONES[$i]}' == '$i' ] ]" >> ./cas.dat
	let "i++"
done
