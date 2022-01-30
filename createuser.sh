#!/usr/bin/env bash

newusers users.txt

for i in `cat users.txt | cut -f 1 -d :`
do
    rm -rf /home/$i
    mkhomedir_helper $i 0022 ./skelentry
done