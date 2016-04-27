gpio mode 3 in
gpio mode 3 up
gpio mode 2 out

echo Hello World!
#bootup fast blink
for ((i=0; i<10; i++)); do
 gpio write 2 1
 sleep 0.05
 gpio write 2 0
 sleep 0.1
done

 
echo Have fun...
