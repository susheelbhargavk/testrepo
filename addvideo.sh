cd gitdir/Testrepo-1/
echo "Enter the name of the video with extension"
read vid
git add $vid
git commit -m "new video added"
git pull origin master
git push origin master

echo "Do you want to play again from the start"
cd gitdor/Testrepo-1/
vlc * -f
