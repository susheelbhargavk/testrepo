repo=$(cat repo-details.txt)
cd ~/gitdir/$repo
git pull
ls -t | grep mp4 > ~/newplaylist

old=$(cat ~/playlist | wc -l)
new=$(cat ~/newplaylist | wc -l)
echo $old;
echo $new;

if [ $old -lt $new ]
then
i=0
processid=$(pidof vlc)
rm -rf ~/vlccommand.sh
touch ~/vlccommand.sh
echo -n "DISPLAY=`echo $DISPLAY` vlc --fullscreen --loop   " >> ~/vlccommand.sh
cd ~/gitdir/$repo

while read line
do
echo $line;
echo -n "$line  " >> ~/vlccommand.sh
done < ~/newplaylist

chmod +x ~/vlccommand.sh
sh ~/vlccommand.sh & while [ $i -lt 1 ]; do echo foo; i=`expr $i + 1`; sleep 3; kill -9 $processid;done > /dev/null
rm ~/playlist
mv ~/newplaylist ~/playlist
fi
