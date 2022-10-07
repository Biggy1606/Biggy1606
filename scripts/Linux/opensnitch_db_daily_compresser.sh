#!/bin/sh
# Variables definition
todayDate=$(date +'%Y%m%d-%H%M%S') # Keep today date in variable
opensnitchConfigDir=~/.opensnitch
archiveDir=$opensnitchConfigDir/archive

### Main script ###
mv $opensnitchConfigDir/opensnitch_database.dat $opensnitchConfigDir/opensnitch_database_$todayDate.dat # Change name of actual DB
lz4 -9 $opensnitchConfigDir/opensnitch_database_$todayDate.dat $opensnitchConfigDir/opensnitch_database_$todayDate.lz4 # Compress old file
rm $opensnitchConfigDir/opensnitch_database_$todayDate.dat # Remove old file
# Make archive directory if not exist
if [ ! -d $archiveDir ] 
then
    mkdir $archiveDir
fi
mv $opensnitchConfigDir/opensnitch_database_$todayDate.lz4 $archiveDir # Move compressed file to archive dir
cp $opensnitchConfigDir/clean_db/opensnitch_database.dat $opensnitchConfigDir/opensnitch_database.dat # Copy clean db to work dir
