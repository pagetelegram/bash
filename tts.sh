#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Please provide the text file name and the output file name"
    exit 1
fi

# Extract the text from the text file
TEXT=$(cat $1)

# Use Google TTS to convert the text to speech
curl -s -o $2 -X POST -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data "{
      'input':{
        'text':'$TEXT'
      },
      'voice':{
        'languageCode':'en-US',
        'name':'en-US-Wavenet-D',
        'ssmlGender':'FEMALE'
      },
      'audioConfig':{
        'audioEncoding':'MP3'
      }
    }" "https://texttospeech.googleapis.com/v1/text:synthesize"