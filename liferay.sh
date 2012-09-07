#!/bin/sh

APP_NAME=liferay

echo setting up environment...
cd /tmp
rm -r target
mkdir -p target/$APP_NAME
cd target

echo downloading...
wget -q http://iweb.dl.sourceforge.net/project/lportal/Liferay%20Portal/6.1.1%20GA2/liferay-portal-tomcat-6.1.1-ce-ga2-20120731132656558.zip -O $APP_NAME-tomcat.zip
wget -q http://downloads.sourceforge.net/project/lportal/Liferay%20Portal/6.1.1%20GA2/liferay-portal-6.1.1-ce-ga2-20120731132656558.war -O $APP_NAME-nodeps.war

echo repackaging... 
unzip -q $APP_NAME-tomcat.zip
unzip -q $APP_NAME-nodeps.war -d $APP_NAME/
cp -r liferay-portal*/tomcat*/lib/ext/*.jar $APP_NAME/WEB-INF/lib/
cp -r $WORKSPACE/liferay/* $APP_NAME/

cd $APP_NAME
zip -qr ../$APP_NAME.war *
cp -rf ../$APP_NAME.war $WORKSPACE/

echo finished
