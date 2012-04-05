#!/bin/bash
###################################
# Example script of setting       #
# up a system and auto installing #
# dokuwiki                        #
###################################

#Some variables
WWWROOT=/var/www
VERSION=2012-01-25

TARBALL=dokuwiki-$VERSION.tgz
URL=http://www.splitbrain.org/_media/projects/dokuwiki/$TARBALL

export DEBIAN_FRONTEND=noninteractive
aptitude -yq update
aptitude -yq install wget
tasksel install lamp-server

a2enmod php5
a2enmod rewrite

cd $WWWROOT
wget $URL
tar -zxvf $TARBALL

apache2ctl graceful
