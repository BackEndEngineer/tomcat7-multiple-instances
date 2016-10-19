#!/bin/sh
RETVAL=$?
# tomcat实例目录,指向了含有 conf的实例目录
export CATALINA_BASE="$PWD"
# tomcat安装目录,指向tomact所在的路径
export CATALINA_HOME="/Users/hehaiyang/Downloads/tomcat7-multiple-instances/tomcat7"
#启动与关闭
case "$1" in
start)
if [ -f $CATALINA_HOME/bin/startup.sh ];then
echo $"Start Tomcat"
$CATALINA_HOME/bin/startup.sh
fi
;;
stop)
if [ -f $CATALINA_HOME/bin/shutdown.sh ];then
$CATALINA_HOME/bin/shutdown.sh
fi
;;
*)
echo $"Usage: $0 {start|stop}"
exit 1
;;
esac
exit $RETVAL
