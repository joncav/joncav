#!/bin/bash

#Making sure we are not messing around with root
if [ $(id -u) = 0 ]; then
    echo "You are root, please change to your personal user"
    exit 1
fi

#Choose the key, which is manual but keeps it specific
echo "Which public key do you want to add to this server? Type 1 for Personal, 2 for op5, 3 for op5-4096, followed by [ENTER]:"

read KEY_NUM

if [ $KEY_NUM = 1 ]; then
            KEY="id_rsa.pub"
        elif [ $KEY_NUM = 2 ]; then
            KEY="id_rsa_op5.pub"
        elif [ $KEY_NUM = 3 ]; then
            KEY="id_rsa_4096_op5.pub"
fi

#Checking to see if the ssh folder exists, if not create it properly
SSH_DIR="~/.ssh/"
if [ -d "~/.ssh/" ]; then
    echo "Creating ssh folder and setting permissions"
    mkdir ~/.ssh
    chmod 700 ~/.ssh
fi

#Checking to see if the authorized_keys file exists, if not create it properly
if [ ! -f ~/.ssh/authorized_keys ]; then
    echo "Creating authorized_keys file and setting permissions"
    touch ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
fi

#Copy the key we choose into place
echo "Copying $KEY into place"
cp $KEY ~/.ssh/authorized_keys
