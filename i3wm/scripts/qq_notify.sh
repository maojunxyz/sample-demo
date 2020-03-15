#!/bin/bash
#qq来消息时播放的声音
notify-send 'QQ消息提醒已开启!' 
file=/home/maojun/Music/msg.wav
#设置提醒时间间隔为1秒
start=`date +%s`
stop=`expr $start + 1`
inotifywait -mq -e access $file | while read event
do
    now=`date +%s`
        
    if [ $now -gt $stop ]
    then    
        notify-send '你有新的QQ消息!' 
        stop=`expr $now + 1`
    fi
done
