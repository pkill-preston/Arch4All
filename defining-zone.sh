#! /bin/sh

## Defining Region and synching it to the system


echo -e "Which zone do you live?"

echo '1)Africa
2)America
3)Antarctica
4)Arctic
5)Asia
6)Atlantic
7)Australia
8)Brazil
9)Canada
10)Chile
11)Europe
12)Indian
13)Mexico
14)Pacific
15)US'
read -p ": " ANSWER


while [ 1 in 15 ]
case $ANSWER in

1)'Africa';;
2)'America';;
3)'Antarctica';;
4)'Arctic';;
5)'Asia';;
6)'Atlantic';;
7)'Australia';;
8)'Brazil';;
9)'Canada';;
10)'Chile';;
11)'Europe';;
12)'Indian';;
13)'Mexico';;
14)'Pacific';;
15)'US';;
*) echo "Invalid input" ;;

esac

echo $ANSWER

[ "Africa" == '1' ] && echo "pinto"

[ 'America' == '2' ] && echo "pinto"

[ 'Antarctica' == '3' ] && echo "pinto"

[ 'Arctic' == '4' ]  && echo "pinto"

[ 'Asia' == '5' ]  &&  echo "pinto"

[ 'Atlantic' == '6' ] &&  echo "pinto"

[ 'Australia' == '7' ] && echo "pinto"

[ 'Brazil' == '8' ] &&  echo "pinto"

[ 'Canada' == '9' ] && echo "pinto"

[ 'Chile' == '10' ] && echo "pinto"

[ 'Europe' == '11' ] && echo "pinto"

[ 'Indian' == '12' ] && echo "pinto"
 
[ 'Mexico' == '13' ] && echo "pinto"

[ 'Pacific' == '14' ] && echo "pinto"

[ 'US' == '15' ] && echo "pinto"