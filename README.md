[![Build](https://github.com/rosestack/rose-build/actions/workflows/maven-build.yml/badge.svg)](https://github.com/rosestack/rose-build/actions/workflows/build.yml)
[![Maven](https://img.shields.io/maven-central/v/io.github.rosestack/rose-build.svg)](https://repo1.maven.org/maven2/io/github/rosestack/rose-build/)
![License](https://img.shields.io/github/license/rosestack/rose-build.svg)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=io.github.rosestack%3Arose-build&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=io.github.rosestack%3Arose-build)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=io.github.rosestack%3Arose-build&metric=coverage)](https://sonarcloud.io/dashboard?id=io.github.rosestack%3Arose-build)
[![codecov.io](https://codecov.io/github/rosestack/rose-build/coverage.svg?branch=main)](https://codecov.io/github/rosestack/rose-build?branch=main)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/rosestack/rose-build.svg)](http://isitmaintained.com/project/rosestack/rose-build "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/rosestack/rose-build.svg)](http://isitmaintained.com/project/rosestack/rose-build "Percentage of issues still open")

# Rose Build

The Rose parent POM which has to be inherited by all rose modules. This project provides a standardized build configuration for all Rose Stack projects, ensuring consistent build practices and quality standards across the ecosystem.

## Table of Contents

- [Requirements](#requirements)
- [Features](#features)
- [Quick Start](#quick-start)
- [Usage](#usage)
- [Contributing](#contributing)
- [References](#references)

## Requirements

- Java 8+
- Maven 3.6.3+

## Features

Rose Build supports the following features:

- **Language Support**
  - Java 8+ compatibility
  - UTF-8 encoding
  - Consistent code formatting with Spotless
  - Code quality checks with Checkstyle
  - EditorConfig support for cross-editor consistency
- **Plugins Management**
  - Dependency management
  - Code quality tools (SpotBugs, JaCoCo)
  - Documentation generation
  - Site generation and deployment
  - Resource filtering and encoding
  - Manifest customization
- **Profiles Management**
  - Development profile
  - Release profile
  - Coverage profile
- **Project Settings**
  - Standardized project structure
  - Consistent versioning
  - Quality gates
  - License management
  - Git attributes configuration

## Quick Start

### 1. Configure Maven Settings

Add the following to your `~/.m2/settings.xml`:

```xml
<servers>
    <server>
        <id>central</id>
        <username>[username]</username>
        <password>[password]</password>
    </server>
</servers>
```

### 2. Add to Your Project

Add the following to your project's `pom.xml`:

```xml
<parent>
    <groupId>io.github.rosestack</groupId>
    <artifactId>rose-build</artifactId>
    <version>0.0.6-SNAPSHOT</version>
</parent>
```

## Usage

#### Building From Source

```bash
mvn install
```

#### Building Site

The documentation on the github pages is generated from this repository:

```bash
mvn clean site site:stage
```

Once done, point your browser to `./target/staging/index.html`.

#### Test

```bash
mvn clean verify
```

### Analyze dependency

```bash
mvn dependency:analyze

mvn versions:display-dependency-updates
```

#### Release

```bash
# Update version
mvn versions:set -DprocessAllModules=true -DgenerateBackupPoms=false -DnewVersion=0.0.1

# Publish to Central
mvn -DskipTests -Prelease deploy
```

### Format

```bash
mvn spotless:apply
```

#### Code Quality

```bash
# Run tests with coverage
mvn verify -Pcoverage javadoc:javadoc

# Run Sonar analysis
mvn sonar:sonar -Dsonar.token=$SONAR_TOKEN
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines

- Follow the [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html)
- Use [EditorConfig](https://editorconfig.org/) for consistent coding style
- Write meaningful commit messages following [Conventional Commits](https://www.conventionalcommits.org/)

## References

- [S4U Parent POM](https://github.com/s4u/parent)
- [Instancio](https://github.com/instancio/instancio)
- [Maven Fluido Skin](https://github.com/apache/maven-fluido-skin/)
- [Maven Documentation](https://maven.apache.org/guides/)
- [EditorConfig](https://editorconfig.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)

