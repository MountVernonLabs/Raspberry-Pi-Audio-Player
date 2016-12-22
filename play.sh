#!/bin/bash
H=$(date +%H)
if (( 8 <= 10#$H && 10#$H < 10 )); then
    echo Activating Audio between 8AM and 10AM
    if pgrep "mpg123" > /dev/null
    then
        echo "Task Already Running"
    else
        mpg123 --loop 30 /home/pi/audio.mp3
    fi
else
    echo Stopping audio
    for i in {1..30}
    do
      kill -9 $(pidof mpg123)
    done
fi
