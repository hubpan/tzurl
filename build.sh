#!/usr/bin/env bash
wget http://www.iana.org/time-zones/repository/releases/tzdata$TZDATA_RELEASE.tar.gz
mkdir tzdata$TZDATA_RELEASE
cd tzdata$TZDATA_RELEASE
tar zxf ../tzdata$TZDATA_RELEASE.tar.gz
cd ..
make
sh generate-zoneinfo.sh
sh generate-htaccess-alias.sh
