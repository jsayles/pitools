#!/bin/bash
raspistill -vf -hf -o cam.jpg
./dropbox_uploader.sh -q -f /home/pi/.dropbox_uploader upload cam.jpg cam.jpg
