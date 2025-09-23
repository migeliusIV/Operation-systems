#!/bin/bash

echo "Gooooooidaaaaa"

names=("stud_51" "stud_52" "stud_53" "stud_54" "stud_55") 
passwords=("stud51" "stud52" "stud53" "stud54" "stud55")
sudo groupadd group_stud3k

for userID in 0 1 2 3 4; do
    sudo useradd ${names[$userID]}
    echo "${names[$userID]}:${passwords[$userID]}" | sudo chpasswd
    sudo usermod -a -G group_stud3k ${names[$userID]}
done

# настройка админа 
sudo usermod -a -G sudo admin_kaf 

# демонстрация результатов работы
su admin_kaf 
getent group group_stud3k
