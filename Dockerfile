FROM binhex/arch-int-gui:latest
MAINTAINER blaisegarant

# additional files
##################

# add pre-configured config files for deluge
ADD config/nobody/ /home/nobody/

# install app
#############

RUN pacman -s vim firefox

# docker settings
#################

# map /config to host defined config path (used to store configuration from app)
VOLUME /config

# map /data to host defined config path (used to store data from app)
VOLUME /data

# set permissions
#################

# run script to set uid, gid and permissions
CMD ["/bin/bash", "/usr/local/bin/init.sh"]
