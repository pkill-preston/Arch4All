#! /bin/sh

i=1
<<comment
while [ $i -le 30 ]
do
	echo "$i)" >> /home/preston/Documents/code/arch4all/cas.dat
	let "++i"
done
comment

while [ $i -le 15 ] 
do
	echo "[ [ '$ZONE' == '$' ] ]" >> ./teste.dat
	let "++i"
done
