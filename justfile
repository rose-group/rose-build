all:
    mvn clean install

verify:
    mvn verify

skip-plugins:
    mvn clean install -Djavadoc.skip

test:
    mvn test

javadoc:
    mvn javadoc:javadoc

release:
    mvn release:clean release:prepare
    mvn release:perform
    echo "Close, Release: https://central.sonatype.com/publishing/deployments"
