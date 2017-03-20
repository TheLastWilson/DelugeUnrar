#!/bin/bash

torrentid=$1
torrentname=$2
torrentpath=$3

sleep 60
date >> /gpfs2/Torrents/execute_script.log

echo `date` " Torrent Details: " $torrentname $torrentpath $torrentid  >> /gpfs2/Torrents/execute.log
/usr/local/bin/unrar x -r -o- $torrentpath/$torrentname/*.rar $torrentpath/Extracted/ >> /gpfs2/Torrents/unrar.log 2>&1; 
echo `date` " /usr/local/bin/unrar x -r -o- $torrentpath/$torrentname/*.rar $torrentpath/Extracted/" >> /gpfs2/Torrents/execute.log
/usr/local/bin/unrar x -r -o- $torrentpath/$torrentname/*.part01.rar $torrentpath/Extracted/ >> /gpfs2/Torrents/unrar.log 2>&1;

