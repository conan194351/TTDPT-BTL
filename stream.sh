#!/bin/bash
VIDSOURCE="rtsp://admin:admin@192.168.43.1:8554/live"
AUDIO_OPTS="-c:a aac -b:a 160000 -ac 2"
VIDEO_OPTS="-s 1920x1080  -c:v libx264 -b:v 4M"
OUTPUT_HLS="-hls_time 10 -hls_list_size 6 -hls_wrap 6 -start_number 1 "
ffmpeg -i "$VIDSOURCE" -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS ./data/720p_stream.m3u8
