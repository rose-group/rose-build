[![Build](https://github.com/rosestack/rose-build/actions/workflows/build.yml/badge.svg)](https://github.com/rosestack/rose-build/actions/workflows/build.yml)
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

- **Build Configuration**
  - Java 8+ compatibility
  - UTF-8 encoding
  - Reproducible builds
  - Maven wrapper support
  - Consistent plugin versions management
- **Code Quality**
  - Spotless for code formatting
  - SpotBugs for bug detection
  - Forbidden APIs checking
  - Duplicate classes prevention
  - Dependency convergence enforcement
- **Testing & Coverage**
  - JUnit support
  - Integration tests with Failsafe
  - Code coverage with JaCoCo
  - Sonar integration
- **Documentation**
  - JavaDoc generation
  - Source attachment
  - Site generation
  - License management
- **Release & Deployment**
  - Central repository publishing
  - GPG signing
  - Automated version management
  - Git integration

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

### Building From Source

```bash
mvn clean install
```

### Code Quality Checks

```bash
# Format code
mvn spotless:apply

# Run SpotBugs
mvn spotbugs:check

# Check for forbidden APIs
mvn forbiddenapis:check

# Run all quality checks
mvn verify
```

### Testing

```bash
# Run unit tests
mvn test

# Run integration tests
mvn verify

# Run tests with coverage
mvn verify -Pcoverage

# Run Sonar analysis
mvn sonar:sonar -Dsonar.token=$SONAR_TOKEN
```

### Documentation

```bash
# Generate JavaDoc
mvn javadoc:javadoc

# Generate site
mvn site site:stage

# View site at ./target/staging/index.html
```

### Dependency Management

```bash
# Analyze dependencies
mvn dependency:analyze

# Check for updates
mvn versions:display-dependency-updates

# Check for plugin updates
mvn versions:display-plugin-updates
```

### Release

```bash
# Update version
mvn versions:set -DprocessAllModules=true -DgenerateBackupPoms=false -DnewVersion=X.Y.Z

# Prepare release
mvn release:prepare

# Perform release
mvn release:perform

# Deploy to Central
mvn -Prelease deploy
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
- Ensure all tests pass and coverage is maintained
- Update documentation for significant changes

## References

- [Maven Documentation](https://maven.apache.org/guides/)
- [Spotless Documentation](https://github.com/diffplug/spotless)
- [SpotBugs Documentation](https://spotbugs.github.io/)
- [JaCoCo Documentation](https://www.jacoco.org/jacoco/trunk/doc/)
- [Sonar Documentation](https://docs.sonarqube.org/latest/)
- [EditorConfig](https://editorconfig.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)

