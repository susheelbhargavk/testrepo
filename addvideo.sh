echo "enter the name of the video with extension"
read vid
git add vid
git commit -m "new video added"
git pull origin master
git push origin master
