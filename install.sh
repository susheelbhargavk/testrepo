echo "Enter the URL of Repository:"
read repo
echo $repo > repo-tmp
awk -F/ '{print $(NF)}' repo-tmp >> repo-details.txt
rm -rf repo-tmp
mkdir ~/gitdir
cd ~/gitdir
sudo apt-get install git-core -y > /dev/null
git clone $repo

touch ~/playlist
crontab -l | { cat; echo "*/5 * * * * sh ~/update.sh "; } | crontab -
sudo apt-get install vlc -y > /dev/null


