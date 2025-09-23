#!/bin/bash

echo "Gooooooidaaaaa"

names=("stud_51" "stud_52" "stud_53" "stud_54" "stud_55" "admin_kaf") 
passwords=("stud5100" "stud5200" "stud5300" "stud5400" "stud5500" "adminkaf")
sudo groupadd group_stud3k

for userID in 0 1 2 3 4 5; do
    sudo useradd ${names[$userID]}
    echo "${names[$userID]}:${passwords[$userID]}" | sudo chpasswd
    sudo usermod -a -G group_stud3k ${names[$userID]}
done

# настройка админа 
sudo usermod -a -G sudo admin_kaf 

# демонстрация результатов работы
su admin_kaf 
getent group group_stud3k
