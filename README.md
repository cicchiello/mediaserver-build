# Mediaserver build repo

# Step 1: prepare sdcard and first boot
   * choose a good sdcard -- the performance variances can be drastic!
   * I've been using 16GB size, 'cause it's a good size to allow for images to be moved around and saved
   * Using Raspberry Pi Imager, I installed the latest Raspberry Pi 64bit OS (Lite) image
      - set host: mediaserver-stage (to be changed to just "mediaserver" upon deployment)
      - set user/pswd: pi/<My-fruit>-<home#>
      - added raspberry pi connect support
      - using raspi-config, set:
           i local en_US.UTF-8
      - > sudo apt -y install git
   * install the mediaserver-build repo:
      > git clone https://github.com/cicchiello/mediaserver-build.git
   * manually place couchdb-secrets.sh in that directory
      > scp imp/clouseau.conf imp/couchdb-secrets.sh imp/fstab imp/hosts imp/mounts imp/network-config.sh \
           pi@mediaserver-build:/home/pi/mediaserver-build/imp


# Step 2: setups on device
   * setup everything else
      > sudo /home/pi/mediaserver-build/setup-all.bsh

  ... OR sequentially:

   * run setup0.bsh
      > sudo /home/pi/mediaserver-build/setup0.bsh  # takes ~2 minutes
   * run setup-couchdb.bsh
      > sudo /home/pi/mediaserver-build/setup-couchdb.bsh  # takes ??? minutes


# Final step: when ready to take existing mediaserver offline and replace with this one
   * edit local copies of:
       - imp/fstab: remove old-mediaserver entry
       - imp/hosts: remove old-mediaserver entry
   * cleanup /mnt/passport/couchdb* area
   * this build will point couchdb+clouseau at /mnt/passport/couchdb2/*, so:
       - check imp/clouseau.conf
       - check imp/couchdb-local.ini
   * one final flash and setup-all.bsh invocation



To Do:
   - couchdb
   - clouseau
   - networking (exports)
   - wireguard
   - apache
   - static ip config
   - fs mounts and exports (/etc/fstab /etc/exports)
   - certificate and its update support for photos website
   - install all my applications...


   
