#/bin/bash

JAVA_PROCESS_PID=$(ps -a | grep java | grep -v grep | awk '{print $1}')

java -Djava.library.path=/opt/java/openjdk/bin -cp /opt/java/openjdk/lib/tools.jar:warmroast.jar com.sk89q.warmroast.WarmRoast --pid $JAVA_PROCESS_PID --port 44100