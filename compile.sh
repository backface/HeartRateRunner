#!/bin/sh
DEVICE=vivoactive_hr
SDK_HOME=/data/sports/garmin/connect-iq-sdk
DEPLOY=/Volumes/GARMIN/GARMIN/APPS/
PRIVATE_KEY=/data/sports/garmin/connect-iq-sdk/developer_key.der 

$SDK_HOME/bin/monkeyc -o bin/trendyRun.prg -m manifest.xml source/runningTrends.mc -y $PRIVATE_KEY \
	-z resources/resources.xml:resources/fonts/fonts.xml:resources/strings.xml:resources/settings/settings.xml:resources/settings/properties.xml \
	-d $DEVICE
