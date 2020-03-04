#!/bin/bash -x
plot=$((60 * 40 ))
areaInAcres=`echo "$plot * 25 * 0.3048 * 0.000247105" | bc`
echo  "Area of plot = $plot"
echo "Area of 25 Plot = $((plot * 25))"
echo "Area In Acres " $areaInAcres
