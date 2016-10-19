###Tomcat多实例部署
> 多个服务单实例部署时,不管是直接放在webapps下,还是增加配置文件./conf/server.xml中的<host>,
> 关闭和启动都是所有项目都受到影响,特别一些启动时间比较长的项目,如果没有热部署或者热部署失败时,
> 修改一个class或静态资源,重启的效率极低。
-----
> 备份tomcat多实例部署配置目录，以便将来用到。

1.启动脚本赋权限

```
chmod a+x tomcat.sh
```

2.启动测试

```
//启动
cd /根目录/tomcat7-multiple-instances/tomcat7-ins/example.com
./tomcat.sh start
关闭
cd /根目录/tomcat7-multiple-instances/tomcat7-ins/example.com
./tomcat.sh stop
```
