#!/bin/sh
env/bin/python campsites.py --start_date $1 --end_date $2 > result_$1_$2.txt
RESULTS=`grep -E '^.*[^\n]+.*$' results/result_$1_$2.txt | wc -l`
if [ $RESULTS -gt "0" ];
then
    echo "RESULTS FOUND - "`date`
    Open /Applications/TextEdit.app result_$1_$2.txt;
else
    echo "NO RESULTS FOUND - "`date`;
fi;
