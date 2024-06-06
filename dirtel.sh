#!/bin/bash

read -p "찾으시는 분 이름 : " name
grep -w $name tele.txt | cut -d' ' -f1

read -p "찾으시는 분 전화번호 (-) : " tele
grep -w $tele tele.txt | cut -d' ' -f1-2

read -p "찾으시는 분 지역 : " loc
grep -w $loc tele.txt | cut -d' ' -f1-3

read -p "찾으시는 분의 정보가 나오나요?(Y/N)" ans

if [ $ans == "Y" ] || [ $ans == "y" ]
then
  echo "종료합니다."
elif [ $ans == "N" ] || [ $ans == "n" ]
then  echo "입력한 정보를 저장할게요."
  echo $name $tele $loc >>  tele.txt
else
  echo "Y/N만 입력해주세요. 종료하겠습니다."
fi

