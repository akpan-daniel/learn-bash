#!/bin/bash

VAR=$1
SERVER=/tmp/sleep-walking-server

echo '#!/bin/bash
PID_FILE="/tmp/sleep-walking-server.pid"
trap "rm $PID_FILE; exit" SUGHUP SIGINT SIGTERM
echo $$ > $PID_FILE

while true
do
    :
done' > "${SERVER}.sh"

case VAR in
    "start")
        $(${SERVER}.sh &)
        ;;
    "stop")
        kill $(cat ${SERVER}.pid)
        ;;
    *)
        echo "Usage: $0 start|stop"
        exit 1
        ;;
esac
