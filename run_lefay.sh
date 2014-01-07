if [ "$PWD" != "/home/lefay/lefaybot" ]
then
    echo "not in ~lefay/lefaybot, you need to run this from that dir"
    exit
fi

rm -f stop-looping

while true
do
    if [ -e 'stop-looping' ]
    then
        echo "Stopping! Because you told me to."
        break
    fi
    git pull origin hipchat
    npm install
    echo "getting private scripts"
    (cd ../lefay-private-scripts ; git pull origin hipchat)
    cp ../lefay-private-scripts/scripts/* scripts/
    echo "running lefay!"
    bin/hubot -a hipchat
    echo -n "lefay stopped. waiting 20s before restart. pid is "
    echo $$
    sleep 20
done
