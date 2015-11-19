ARGS="$@"
SFLOWTOOL_PID=$(/bin/ps -ef | /bin/grep "sflowtool $ARGS" | /bin/grep -v "grep" | /usr/bin/awk ' { print $2 } ')

if [ ! -z $SFLOWTOOL_PID ]; then
        kill -s 9 $SFLOWTOOL_PID
fi
sflowtool "$@"
