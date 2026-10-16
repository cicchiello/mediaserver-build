# Mediaserver build repo

# Step 1:
   * Using Raspberry Pi Imager, I installed the latest Raspberry Pi OS (Lite) image
      - set host: mediaserver-stage (to be changed to just "mediaserver" upon deployment)
      - set user/pswd: pi/<My-fruit>-<home#>
      - added raspberry pi connect support
      - using raspi-config, set:
           i local en_US.UTF-8
      - > sudo apt -y install git
   * install the mediaserver-build repo:
      > git clone https://github.com/cicchiello/mediaserver-build.git
   * run setup0.bsh
      > sudo /home/pi/mediaserver-build/setup0.bsh


To Do:
   - couchdb
   - clouseau
   - ntfs3
   - wireguard
   - apache
   - install all my applications...
   
