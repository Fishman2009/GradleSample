. local.sh
if [ "$APP_HOME" == "" ]; then
	echo "No APP_HOME, exited"
	exit 1
fi

sudo ln -sf -t /etc/profile.d $APP_HOME/etc/local.sh

ln -sf -t $APP_HOME/bin $ANT_HOME/bin/ant

ln -sf -t $APP_HOME/bin $MAVEN_HOME/bin/mvn

ln -sf -t $APP_HOME/bin $GRADLE_HOME/bin/gradle

ln -sf -t $APP_HOME/bin $SBT_HOME/bin/sbt

ln -sf -t $APP_HOME/bin $SCALA_HOME/bin/scala
ln -sf -t $APP_HOME/bin $SCALA_HOME/bin/scalac
ln -sf -t $APP_HOME/bin $SCALA_HOME/bin/scaladoc
ln -sf -t $APP_HOME/bin $SCALA_HOME/bin/scalap
ln -sf -t $APP_HOME/bin $SCALA_HOME/bin/fsc

ln -sf -t $APP_HOME/bin $TYPE_HOME/activator
ln -sf -t $APP_HOME/bin $CLOJURE_HOME/clojure
