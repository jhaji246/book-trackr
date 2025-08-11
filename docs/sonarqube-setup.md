# SonarQube Integration Guide

## Overview

This guide explains how to set up and use SonarQube for code quality analysis in the BookTrackr Flutter project.

## Prerequisites

1. **SonarQube Server**: You need access to a SonarQube instance
   - Cloud: [SonarCloud](https://sonarcloud.io/) (Free for public repos)
   - Self-hosted: [SonarQube Community Edition](https://www.sonarqube.org/downloads/)

2. **SonarQube Scanner**: Install the SonarQube Scanner
   ```bash
   # macOS
   brew install sonar-scanner
   
   # Linux
   wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.8.0.2856-linux.zip
   unzip sonar-scanner-cli-4.8.0.2856-linux.zip
   export PATH=$PATH:sonar-scanner-4.8.0.2856-linux/bin
   
   # Windows
   # Download from https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/
   ```

## Setup Instructions

### 1. SonarQube Server Setup

#### Option A: SonarCloud (Recommended for Public Repos)

1. Go to [SonarCloud](https://sonarcloud.io/)
2. Sign in with your GitHub account
3. Create a new organization
4. Add your repository
5. Get your organization key and project key

#### Option B: Self-hosted SonarQube

1. Download SonarQube Community Edition
2. Start the server: `./bin/linux-x86-64/sonar.sh start`
3. Access at `http://localhost:9000`
4. Default credentials: `admin/admin`

### 2. Environment Variables

Set up the following environment variables:

```bash
# For SonarCloud
export SONAR_TOKEN=your_sonarcloud_token
export SONAR_HOST_URL=https://sonarcloud.io

# For Self-hosted
export SONAR_TOKEN=your_sonarqube_token
export SONAR_HOST_URL=http://localhost:9000
```

### 3. GitHub Secrets Setup

Add these secrets to your GitHub repository:

1. Go to your repository settings
2. Navigate to Secrets and variables → Actions
3. Add the following secrets:
   - `SONAR_TOKEN`: Your SonarQube token
   - `SONAR_HOST_URL`: Your SonarQube host URL

### 4. Local Analysis

Run SonarQube analysis locally:

```bash
# Make the script executable
chmod +x scripts/sonar-analysis.sh

# Run the analysis
./scripts/sonar-analysis.sh
```

### 5. CI/CD Integration

The GitHub Actions workflow is already configured to run SonarQube analysis on:
- Push to main/develop branches
- Pull requests

## Configuration Files

### sonar-project.properties

Main configuration file that defines:
- Project key and name
- Source and test directories
- Coverage exclusions
- Quality gate settings

### sonar-quality-gate.json

Defines quality gate conditions:
- Bugs: 0 (BLOCKER)
- Vulnerabilities: 0 (BLOCKER)
- Security Hotspots: 100% reviewed
- Code Coverage: >80%
- Code Smells: <50
- Duplicated Lines: <3%

### sonar-rules.json

Custom rules configuration for Dart/Flutter:
- Code quality rules
- Security rules
- Maintainability rules
- Custom quality profile

## Quality Metrics

SonarQube tracks the following metrics:

### Code Quality
- **Bugs**: Actual coding errors
- **Vulnerabilities**: Security vulnerabilities
- **Code Smells**: Maintainability issues
- **Technical Debt**: Time to fix all issues

### Coverage
- **Line Coverage**: Percentage of lines covered by tests
- **Branch Coverage**: Percentage of branches covered by tests
- **Function Coverage**: Percentage of functions covered by tests

### Duplications
- **Duplicated Lines**: Number of duplicated lines
- **Duplicated Blocks**: Number of duplicated code blocks
- **Duplicated Files**: Number of duplicated files

### Maintainability
- **Cyclomatic Complexity**: Complexity of functions
- **Cognitive Complexity**: Cognitive load of code
- **Maintainability Rating**: A to E rating

### Reliability
- **Reliability Rating**: A to E rating based on bugs
- **Bugs**: Number of bugs found

### Security
- **Security Rating**: A to E rating based on vulnerabilities
- **Security Hotspots**: Security issues that need review
- **Vulnerabilities**: Number of security vulnerabilities

## Quality Gate

The quality gate ensures code meets minimum quality standards:

| Metric | Threshold | Status |
|--------|-----------|--------|
| Bugs | 0 | ❌ BLOCKER |
| Vulnerabilities | 0 | ❌ BLOCKER |
| Security Hotspots | 100% reviewed | ⚠️ WARNING |
| Code Coverage | >80% | ⚠️ WARNING |
| Code Smells | <50 | ⚠️ WARNING |
| Duplicated Lines | <3% | ⚠️ WARNING |
| Maintainability Rating | A | ✅ PASS |
| Reliability Rating | A | ✅ PASS |
| Security Rating | A | ✅ PASS |

## Best Practices

### 1. Regular Analysis
- Run SonarQube analysis on every commit
- Review and fix issues promptly
- Set up quality gate blocking for main branch

### 2. Issue Management
- Address BLOCKER and CRITICAL issues immediately
- Plan MAJOR and MINOR issues for next sprint
- Use INFO issues for future improvements

### 3. Team Integration
- Add SonarQube badges to README
- Include quality metrics in sprint reviews
- Set up notifications for quality gate failures

### 4. Custom Rules
- Create project-specific rules
- Adjust thresholds based on team experience
- Document rule rationale

## Troubleshooting

### Common Issues

1. **Scanner not found**
   ```bash
   # Install sonar-scanner
   brew install sonar-scanner
   ```

2. **Authentication failed**
   ```bash
   # Check token and URL
   echo $SONAR_TOKEN
   echo $SONAR_HOST_URL
   ```

3. **Coverage not found**
   ```bash
   # Generate coverage first
   flutter test --coverage
   ```

4. **Quality gate failed**
   - Review failed conditions
   - Fix issues or adjust thresholds
   - Update quality gate configuration

### Debug Mode

Run with debug information:

```bash
sonar-scanner -X -Dsonar.verbose=true
```

## Integration with IDEs

### VS Code
1. Install SonarLint extension
2. Configure with your SonarQube server
3. Get real-time feedback

### Android Studio / IntelliJ
1. Install SonarLint plugin
2. Configure SonarQube connection
3. Enable real-time analysis

## Reports and Dashboards

### SonarQube Dashboard
- Overview of all metrics
- Trend analysis
- Issue tracking
- Quality gate status

### Custom Reports
- Export data for custom dashboards
- Integrate with other tools
- Generate reports for stakeholders

## Advanced Configuration

### Custom Quality Profiles
1. Create project-specific quality profile
2. Adjust rule severity levels
3. Add custom rules

### Branch Analysis
1. Enable branch analysis for feature branches
2. Set up pull request decoration
3. Configure branch-specific quality gates

### Security Analysis
1. Enable security hotspots review
2. Configure security rules
3. Set up security notifications

## Support

For issues and questions:
- [SonarQube Documentation](https://docs.sonarqube.org/)
- [SonarCloud Documentation](https://sonarcloud.io/documentation)
- [Dart Plugin Documentation](https://docs.sonarqube.org/latest/analysis/languages/dart/) 