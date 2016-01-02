export APP_HOME=/app/app
export JAVA_HOME=/opt/app/jdk1.8.0_66
export GOROOT=$APP_HOME/go
export ANT_HOME=$APP_HOME/apache-ant-1.9.6
export MAVEN_HOME=$APP_HOME/apache-maven-3.3.9
export SCALA_HOME=$APP_HOME/scala-2.11.7
export SBT_HOME=$APP_HOME/sbt
export SBT_OPTS="-Dsbt.ivy.home=$SBT_HOME/ivy2 -Dsbt.override.build.repos=true -Dsbt.repository.config=$SBT_HOME/conf/repositories -Dsbt.boot.directory=$SBT_HOME/boot/"
export GRADLE_HOME=$APP_HOME/gradle-2.10
export GRADLE_USER_HOME=$APP_HOME/gradle
export TYPE_HOME=$APP_HOME/activator-dist-1.3.7
export GROOVY_HOME=$APP_HOME/groovy-2.4.5
export CLOJURE_HOME=$APP_HOME/clojure-1.7.0
export SWIFT_HOME=$APP_HOME/swift
export SDKMAN_DIR=$APP_HOME/sdkman
export PATH=$SWIFT_HOME/usr/bin:$APP_HOME/bin:$GOROOT/bin:$JAVA_HOME/bin:$GROOVY_HOME/bin:$PATH

alias mget='aria2c -k 1m -x 5 -j 5 -s 5'
source "$SDKMAN_DIR/bin/sdkman-init.sh"
