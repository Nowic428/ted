#!/bin/bash

echo "지역번호가 궁금하시다구요?"
read -p "찾고자 하는 지역번호 : " arnu

if [ $arnu = "서울" ] || [ $arnu = "부산" ] || [ $arnu = "대구" ] || [ $arnu = "인천" ] || [ $arnu = "광주" ] || [ $arnu = "대전" ] || [ $arnu = "울산" ] || [ $arnu = "세종" ] || [ $arnu = "경기" ] || [ $arnu = "강원" ] || [ $arnu = "충북" ] || [ $arnu = "충남" ] || [ $arnu = "전북" ] || [ $arnu = "전남" ] || [ $arnu = "경북" ] || [ $arnu = "경남" ] || [ $arnu = "제주" ]
then
  grep -w $arnu arnu.txt
elif [ $arnu = "02" ] || [ $arnu = "051" ] || [ $arnu = "053" ] || [ $arnu = "032" ] || [ $arnu = "062" ] || [ $arnu = "042" ] || [ $arnu = "052" ] || [ $arnu = "044" ] || [ $arnu = "031" ] || [ $arnu = "033" ] || [ $arnu = "043" ] || [ $arnu = "041" ] || [ $arnu = "063" ] || [ $arnu = "061" ] || [ $arnu = "054" ] || [ $arnu = "055" ] || [ $arnu = "064" ]
then
  grep -w $arnu arnu.txt
else
  echo "존재하지 않습니다."
fi
