gpio mode 3 in
gpio mode 3 up
gpio mode 2 out

#bootup fast blink
for ((i=0; i<10; i++)); do
 gpio write 2 1
 sleep 0.05
 gpio write 2 0
 sleep 0.1
done

while true; do
 BTN0=`gpio read 3` #read first time
 if [ $BTN0 == 0 ]; then
   echo "btn pressed"
 fi
 gpio write 2 1
 sleep 2
 gpio write 2 0
 sleep 2
 BTN1=`gpio read 3` #read second time
 if [ $BTN0 == $BTN1 ]; then
  if [ $BTN1 == 0 ]; then
    echo "Button Held. Quitting application";
    break 3 #lets get out
  fi
 fi
done

echo "getting to the end..."

 

