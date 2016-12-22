#!/bin/bash
sudo apt-get update

#install command-line MP3 player
sudo apt-get --assume-yes install mpg123

#play through headphone jacks
sudo amixer cset numid=3 1

#activate SSH
sudo apt-get install ssh
sudo /etc/init.d/ssh

#install NTP time sync
sudo apt-get --assume-yes install ntpdate
sudo dpkg-reconfigure tzdata

#install LogMeIn Hamachi
sudo apt-get --assume-yes install --fix-missing lsb lsb-core
# You may need to alter this to get latest package from: https://secure.logmein.com/labs/#HamachiforLinux
sudo wget https://secure.logmein.com/labs/logmein-hamachi_2.1.0.139-1_armel.deb
sudo dpkg --force-architecture --force-depends -i logmein-hamachi_2.1.0.139-1_armel.deb
sudo hamachi login
sudo hamachi login
sudo hamachi set-nick "audio-player"
#modify with your username for LogMeIn
sudo hamachi attach yourlogmein@accountemail.com
sudo update-rc.d logmein-hamachi defaults

#installing cron
sudo crontab -l > mycron
sudo echo "* * * * * sh /home/pi/play.sh" >> mycron
sudo crontab mycron
sudo rm mycron

reboot
