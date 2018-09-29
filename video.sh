#!/bin/bash
#
# [ -s ]: разрешение ролика
# [ -r ]: количество кадров в секунду
# [ -vcodec ]: используемый кодек
# [ -i ]: порядковый номер экрана "иксов"
#

size="1366x768"
name="video1.mp4"
codec="libx264"
xscreen=":0.0"
fps="30"

ffmpeg -f x11grab -s $size -r $fps -i $xscreen -vcodec $codec $name -async 1 -preset ultrafast -pix_fmt yuv444p -thread_queue_size 1024
