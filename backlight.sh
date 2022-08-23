currentlight=$(xrandr --verbose | grep -i bright | grep -oP '\d*\.\d+')
currentlight=`echo $currentlight'*100' | bc -l`
echo $currentlight | awk '{print int($0)}'
