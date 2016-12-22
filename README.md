# Raspberry-Pi-Audio-Player
Turns a Raspberry Pi into an environmental audio player that will loop an audio track during a certain hours set.  Includes Hamachi integration to remotely manage devices over wifi or ethernet.  Triggered off of the cron-tab with a resume in case there's a power failure or missed schedule.

# Installing
- Start with a Raspian installation on your Pi.
- Clone or copy the repository to your /home/pi/ directory
- Edit /home/pi/install.sh and note the Hamachi section, you may need to update the download URL to the latest package and you definitely will need to set your account
- Run sh /home/pi/install.sh to install all dependancies.  (Note this will reboot your Pi when you are finished)
- Change audio.mp3 to any file you want to play on a loop
- Modify /home/pi/play.sh to alter the start and stop time and the number of times your audio needs to loop
