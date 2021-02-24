#!/bin/bash

wget https://apod.nasa.gov/apod/astropix.html

imgURL=$(grep -i '<img' astropix.html | grep -oP '"\K[^"\047]+(?=["\047])')

imgURL="https://apod.nasa.gov/apod/${imgURL}"

imgName=$(grep -i '<img' astropix.html | grep -oP '"\K[^"\047]+(?=["\047])' | cut -d/  -f3)

# imgName="${imgName}.jpg"

wget -O "/home/nimitz/Pictures/astropix/${imgName}" $imgURL

feh --bg-fill /home/nimitz/Pictures/astropix/$imgName

rm astropix.html

exit 0
