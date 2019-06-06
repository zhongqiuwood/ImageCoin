#!/usr/bin/env bash

CURDIR=`dirname $0`
imagecli stop
ln -svfn /Users/oak/__app_support/imagecoinCore cache

sleep 5
#cp ${CURDIR}/_imagecoin.conf cache/imagecoin.conf


${CURDIR}/../ImageCoind -keypool=2 $@

sleep 3
ps -ef|grep ImageCoind|grep -v grep

/querytcpbyport.sh ImageCoin

imagecli getwalletinfo
