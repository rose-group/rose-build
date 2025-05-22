[![Maven Build](https://github.com/rosestack/rose-build/actions/workflows/build.yml/badge.svg)](https://github.com/rosestack/rose-build/actions/workflows/build.yml)
[![Maven](https://img.shields.io/maven-central/v/io.github.rosestack/rose-build.svg)](https://repo1.maven.org/maven2/io/github/rosestack/rose-build/)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=io.github.rosestack%3Arose-build&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=io.github.rosestack%3Arose-build)
[![codecov.io](https://codecov.io/github/rosestack/rose-build/coverage.svg?branch=main)](https://codecov.io/github/rosestack/rose-build?branch=main)
![License](https://img.shields.io/github/license/rosestack/rose-build.svg)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/rosestack/rose-build.svg)](http://isitmaintained.com/project/rosestack/rose-build "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/rosestack/rose-build.svg)](http://isitmaintained.com/project/rosestack/rose-build "Percentage of issues still open")

# Rose Build

Define Maven build setup for all Rose projects.

## Requirements

- Java 8+
- Maven 3.6.0+

## Features

Rose Build supports the following features:

- Language Support
- Plugins Management
- Profiles Management
- Project Settings

## Instructions

### Build

```bash
mvn clean package
```

### Test

```bash
mvn clean verify
```

### Site

Building single-module site:

```bash
mvn site:site
```

Building multi-module sites:

```bash
mvn site:site site:stage
```

Upload sites to gitHub pages:

```bash
mvn --update-snapshots clean site scm-publish:publish-scm -Dscmpublish.serverId=github
```

### Release

Update Release version:

```bash
mvn versions:set -DprocessAllModules=true -DgenerateBackupPoms=false -DnewVersion=0.0.1
```

Publish to Central:

```bash
mvn -DskipTests -Prelease deploy
```

### Sonar

```bash
mvn verify -Pcoverage javadoc:javadoc
mvn sonar:sonar -Psonar -Dsonar.token=$SONAR_TOKEN
```

## Usage

### Java 8+ Maven Project

The root project's pom.xml should set the parent as follows:

```xml
<parent>
    <groupId>io.github.rosestack</groupId>
    <artifactId>rose-build</artifactId>
    <version>0.0.14</version>
</parent>
```

