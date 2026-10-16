# Mediaserver build repo

# Step 1: prepare sdcard and first boot
   * choose a good sdcard -- the performance variances can be drastic!
   * I've been using 16GB size, 'cause it's a good size to allow for images to be moved around and saved
   * Using Raspberry Pi Imager, I installed the latest Raspberry Pi OS (Lite) image
      - set host: mediaserver-stage (to be changed to just "mediaserver" upon deployment)
      - set user/pswd: pi/<My-fruit>-<home#>
      - added raspberry pi connect support
      - using raspi-config, set:
           i local en_US.UTF-8
      - > sudo apt -y install git
   * install the mediaserver-build repo:
      > git clone https://github.com/cicchiello/mediaserver-build.git
   * manually place couchdb-secrets.sh in that directory
      > scp <path>/couchdb-secrets.sh pi@mediaserver-stage:/home/pi/mediaserver-build


# Step 2: setups on device
   * setup everything else
      > sudo /home/pi/mediaserver-build/setup-all.bsh

  OR:

   * run setup0.bsh
      > sudo /home/pi/mediaserver-build/setup0.bsh  # takes ~8 minutes
   * run setup-couchdb.bsh
      > sudo /home/pi/mediaserver-build/setup-couchdb.bsh


To Do:
   - couchdb
   - clouseau
   - ntfs3
   - wireguard
   - apache
   - static ip config
   - fs mounts and exports (/etc/fstab /etc/exports)
   - certificate and its update support for photos website
   - install all my applications...


   
