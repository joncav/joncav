!#/bin/bash
echo "Which public key do you want to add to this server? Type 1 for Personal, 2 for op5, 3 for op5-4096, followed by [ENTER]:"

read KEY_NUM

if [ $KEY_NUM = 1 ]; then
            KEY = "id_rsa.pub"
        elseif [ $KEY_NUM = 1 ]; then
            KEY = "id_rsa_op5.pub"
        elseif [ $KEY_NUM = 1 ]; then
            KEY = "id_rsa_4096_op5.pub"
        exit 1
fi

if [! -d "~/.ssh/" ]; then
    echo "ssh folder not found"
    #mkdir ~/.ssh
    #chmod 700 ~/.ssh
fi

if [ ! -f ~/.ssh/authorized_keys ]; then
    echo "authorized_keys didn't exist yet"
    #touch ~/.ssh/authorized_keys
    #chmod 600 ~/.ssh/authorized_keys
fi

#copy the key into place
echo "copying $KEY into place"
#cat ~/.ssh/$KEY >> ~/.ssh/authorized_keys
