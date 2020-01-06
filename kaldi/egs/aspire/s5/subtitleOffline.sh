#!/bin/bash

args_raw=$1

args=$(./encoding.py $args_raw)

echo $args

#./encoding.py $args

./authentication.sh $args

#./authenticationNew.sh $args


WAV_FILE=${args}.wav

if test -f "$WAV_FILE";

then
	echo $(./GenerateTranscript.sh $args.wav)

	rm -rf $args.wav

	echo ${args}_saperated_text.txt

	./segment_transcripts.py ${args}_finalfinal.txt > ${args}_saperated_text.txt

	rm -rf ${args}_finalfinal.txt

	echo "" > ${args}_map.json

        cat ./line_saperation.py > saperated_text.txt

	./AlignTranscript.sh $args

	rm -rf $args.mp4 ${args}_saperated_text.txt

	echo "" > $(pwd)/vtts/$args.vtt

	echo "" > $(pwd)/$args.vtt

	./json2vtt.py $args

	rm -rf ${args}_map.json

	cat $(pwd)/vtts/$args.vtt

	#cat $(pwd)/$args.vtt

else
	exit 0

fi
