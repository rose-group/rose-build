[![Maven Build](https://github.com/rose-group/rose-build/actions/workflows/build.yml/badge.svg)](https://github.com/rose-group/rose-build/actions/workflows/build.yml)
[![Maven](https://img.shields.io/maven-central/v/io.github.rose-group/rose-build.svg)](https://repo1.maven.org/maven2/io/github/rose-group/rose-build/)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=io.github.rose-group%3Arose-build&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=io.github.rose-group%3Arose-build)
![License](https://img.shields.io/github/license/rose-group/rose-build.svg)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/rose-group/rose-build.svg)](http://isitmaintained.com/project/rose-group/rose-build "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/rose-group/rose-build.svg)](http://isitmaintained.com/project/rose-group/rose-build "Percentage of issues still open")

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

### Compile and test

To compile and test the project:

```bash
mvn verify
```

## Usage

### Java 8+ Maven Project

The root project's pom.xml should set the parent as follows:

```xml
    <parent>
        <groupId>io.github.rose-group</groupId>
        <artifactId>rose-build</artifactId>
        <version>0.0.9</version>
    </parent>
```

