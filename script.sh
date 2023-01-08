#!/bin/bash

HEDEF_DIZIN="/home/matraxsev/Desktop"
KAYIT_DOSYASI="/home/matraxsev/Desktop/metin.txt"

numara=1

while true
do

  read path action file < <(inotifywait -e modify,attrib,close_write,move,creat>
  ZAMAN=$(date +"%Y-%m-%d %T")
  MESAJ="$numara. $HEDEF_DIZIN dizininde $ZAMAN tarihinde değişiklik yapıldı: $>
  echo "$MESAJ" >> $KAYIT_DOSYASI
  ((numara++))
done
