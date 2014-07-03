if [ "$PWD" != "/home/lefay/lefay" ]
then
    echo "not in ~lefay/lefaybot, you need to run this from that dir"
    exit
fi

git pull origin hipchat
npm install
echo "getting private scripts"
(cd ../lefay-private-scripts ; git pull origin hipchat)
cp ../lefay-private-scripts/scripts/* scripts/
echo "running lefay!"
bin/hubot -a hipchat
