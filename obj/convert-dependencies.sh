#!/bin/sh
# AUTO-GENERATED FILE, DO NOT EDIT!
if [ -f $1.org ]; then
  sed -e 's!^C:/Users/Arrow/AppData/Local/Temp!/tmp!ig;s! C:/Users/Arrow/AppData/Local/Temp! /tmp!ig;s!^D:/MINGE/msys/1\.0/!/!ig;s! D:/MINGE/msys/1\.0/! /!ig;s!^D:/MINGE/msys/1\.0!/usr!ig;s! D:/MINGE/msys/1\.0! /usr!ig;s!^D:/MINGE!/mingw!ig;s! D:/MINGE! /mingw!ig;s!^j:!/j!ig;s! j:! /j!ig;s!^i:!/i!ig;s! i:! /i!ig;s!^h:!/h!ig;s! h:! /h!ig;s!^g:!/g!ig;s! g:! /g!ig;s!^f:!/f!ig;s! f:! /f!ig;s!^e:!/e!ig;s! e:! /e!ig;s!^d:!/d!ig;s! d:! /d!ig;s!^c:!/c!ig;s! c:! /c!ig;' $1.org > $1 && rm -f $1.org
fi
