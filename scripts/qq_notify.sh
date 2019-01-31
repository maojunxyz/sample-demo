#!/bin/bash

#如果已经存在进程则先结束
#killall -q qq_notify.sh

# Wait until the processes have been shut down
#while pgrep -u $UID -x qq_notify.sh > /dev/null; do sleep 1; done

#qq来消息时播放的声音
notify-send 'QQ消息提醒已开启!' 
file=/home/maojun/Music/msg.wav
#设置提醒时间间隔为3秒
start=`date +%s`
stop=`expr $start + 3`
inotifywait -mq -e access $file | while read event
do
    now=`date +%s`
        
    if [ $now -gt $stop ]
    then    
        notify-send '你有新的QQ消息!' 
        stop=`expr $now + 3`
    fi
done
