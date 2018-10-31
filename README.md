# Jon Cavanaugh - Personal settings and keys
Personal repo for things like ssh keys and other static items that I might need.

To run this script please execute the following command

` bash <(curl -s https://raw.githubusercontent.com/joncav/joncav/master/key_install.sh)`

With new systems I will often want to copy my keys so that I can login without password auth. This is usually a pain because I forget how to create the ssh and authorized_keys folder permissions. In addition I have to get my keys copied to the server. Using git I can keep my public keys in a central place, and also create a way to easily automating creating the folders I need to copy my key into. 

Any help to improve the key_install.sh file greatly appreciated!

Once you clone this repo (you won't need my keys), set the execute bit for the key_install.sh file. This file is written NOT to run as root to prevent the possibility for you to add your key(s) to the root user.
