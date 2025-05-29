all:
    mvn clean install

core:
    mvn install

skip-plugins:
    mvn clean install -Djavadoc.skip -Dmaven.javadoc.skip

test:
    mvn test

javadoc:
    mvn javadoc:javadoc

release:
    mvn release:clean release:prepare
    mvn release:perform
    echo "Close, Release: https://central.sonatype.com/publishing/deployments"
