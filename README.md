# Rose Build

[![Maven Build](https://github.com/rose-group/rose-build/actions/workflows/maven-build.yml/badge.svg)](https://github.com/rose-group/rose-build/actions/workflows/maven-build.yml)
![Maven](https://img.shields.io/maven-central/v/io.github.rose-group/rose-build.svg)
![License](https://img.shields.io/github/license/rose-group/rose-build.svg)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/rose-group/rose-build.svg)](http://isitmaintained.com/project/rose-group/rose-build "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/rose-group/rose-build.svg)](http://isitmaintained.com/project/rose-group/rose-build "Percentage of issues still open")

## 1. Introduction

Rose Build is a Java Maven parent POM with common build settings, plugins configuration etc. which is used for Rose
Projects.

## 2. Features

Rose Build supports the following features:

- Language Support
- Plugins Management
- Profiles Management
- Project Settings

### 2.1 Language Support

Rose Build supports the Maven project building on Java 8+ TLS and Java 17+ TLS.

### 2.2 Plugins Management

Default Inherited Plugins

- [Maven Compiler Plugin](https://maven.apache.org/plugins/maven-compiler-plugin/)
- [Maven Source Plugin](https://maven.apache.org/plugins/maven-source-plugin/)
- [Flatten Maven Plugin](https://www.mojohaus.org/flatten-maven-plugin/)
- [Git Commit Id Plugin](https://github.com/git-commit-id/git-commit-id-maven-plugin)

Maven Profile `release` Plugins

- [Maven JavaDoc Plugin](https://maven.apache.org/plugins/maven-javadoc-plugin/)
- [Maven Release Plugin](https://maven.apache.org/plugins/maven-release-plugin/)
- [Maven Enforce Plugin](https://maven.apache.org/enforcer/maven-enforcer-plugin/)
- [Maven GPG Plugin](https://maven.apache.org/plugins/maven-gpg-plugin/)
- [Central Publishing Maven Plugin](https://central.sonatype.org/register/central-portal/)
- [Sundrio Maven Plugin](https://github.com/sundrio/sundrio/tree/main/maven-plugin)

Maven Profile `ci` Plugins

- [Sign Maven Plugin](https://www.simplify4u.org/sign-maven-plugin/)

Maven Profile `test` Plugins

- [Maven Failsafe Plugin](https://maven.apache.org/surefire/maven-failsafe-plugin/)
- [Maven Checkstyle Plugin](https://maven.apache.org/plugins/maven-checkstyle-plugin/)
- [Maven Surefire Plugin](https://maven.apache.org/surefire/maven-surefire-plugin/)

Maven Profile `coverage` Plugins

- [Maven JaCoCo Plugin](https://www.eclemma.org/jacoco/)
- [Pitest](https://pitest.org/quickstart/maven/)

Maven Profile `docs` Plugins

- [Asciidoctor Maven Plugin](https://github.com/asciidoctor/asciidoctor-maven-plugin)
- [Docbkx Maven Plugin](https://github.com/mimil/docbkx-tools)
- [Build Helper Maven Plugin](https://www.mojohaus.org/build-helper-maven-plugin/)

### 2.3 Profiles Management

- `release`
- `ci`
- `test`
- `coverage`
- `docs`
- `java8+` (activated by jdk version)
- `java9+` (activated by jdk version)
- `java11` (activated by jdk version)
- `java9-15` (activated by jdk version)
- `java16+` (activated by jdk version)
- `java17+` (activated by jdk version)

### 2.4 Profiles Settings

- Maven Profile `java8+` Settings
  - [Maven JavaDoc Plugin](https://maven.apache.org/plugins/maven-javadoc-plugin/) will be added the options
  `-Xdoclint:none`.
- Maven Profile `java9+` Settings
  - [Maven Compiler Plugin](https://maven.apache.org/plugins/maven-compiler-plugin/)'s property `maven.compiler.release`
  references on the another property `${java.version}`.
- Maven Profile `java11` Settings
  - [Maven JavaDoc Plugin](https://maven.apache.org/plugins/maven-javadoc-plugin/) will use the configuration `source`
  based on the property `${maven.compiler.source}`.
- Maven Profile `java9-15` Settings
  - [Maven Surefire Plugin](https://maven.apache.org/surefire/maven-surefire-plugin/) will append the argument line
  `--illegal-access=permit` for accessing to internal classes
- Maven Profile `java16+` Settings
  - [Maven Surefire Plugin](https://maven.apache.org/surefire/maven-surefire-plugin/) will append the argument line
  `--add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.lang.invoke=ALL-UNNAMED` for accessing to
  JDK modules' classes.

## 3. Usage

### 3.1 Java 8+ Maven Project

The root project's pom.xml should set the parent as follows:

```xml

<parent>
    <groupId>io.github.rose-group</groupId>
    <artifactId>rose-build</artifactId>
    <version>0.0.2</version>
</parent>
```