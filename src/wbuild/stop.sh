#!/usr/bin/env bash

CURDIR=`dirname $0`

imagecli stop


sleep 5

ps -ef|grep ImageCoind|grep -v grep

