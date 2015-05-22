#!/bin/bash

# super straight-forward script that will save a stream to a wav file

STREAM="http://stream.wrct.org:8000/wrct-hi.mp3"
DURATION="1:10:00"
NOW=$(date +"%m-%d-%Y"-%H-%M-%S)
FILENAME="barrio_latino-"$NOW

mplayer "$STREAM" -endpos $DURATION -vo null -ao pcm:waveheader:file=$(pwd)/$FILENAME.wav
