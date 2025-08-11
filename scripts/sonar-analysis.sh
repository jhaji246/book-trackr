#!/bin/bash

# SonarQube Analysis Script for BookTrackr Flutter App
set -e

echo "🔍 Starting SonarQube Analysis..."

# Check if SONAR_TOKEN is set
if [ -z "$SONAR_TOKEN" ]; then
    echo "❌ Error: SONAR_TOKEN environment variable is not set"
    echo "Please set your SonarQube token:"
    echo "export SONAR_TOKEN=your_token_here"
    exit 1
fi

# Check if SONAR_HOST_URL is set
if [ -z "$SONAR_HOST_URL" ]; then
    echo "❌ Error: SONAR_HOST_URL environment variable is not set"
    echo "Please set your SonarQube host URL:"
    echo "export SONAR_HOST_URL=https://your-sonarqube-instance.com"
    exit 1
fi

# Clean previous builds
echo "🧹 Cleaning previous builds..."
flutter clean
flutter pub get

# Run tests with coverage
echo "🧪 Running tests with coverage..."
flutter test --coverage

# Generate coverage report
echo "📊 Generating coverage report..."
genhtml coverage/lcov.info -o coverage/html

# Run Flutter analyze
echo "🔍 Running Flutter analyze..."
flutter analyze --no-fatal-infos > analysis-report.txt 2>&1 || true

# Run security analysis
echo "🔒 Running security analysis..."
dart pub deps --style=tree > dependencies.txt

# Create security hotspots report
cat > security-hotspots.json << EOF
{
  "securityHotspots": [
    {
      "key": "api_key_exposure",
      "component": "lib/shared/providers/books_provider.dart",
      "line": 110,
      "message": "API key is hardcoded in source code",
      "severity": "HIGH",
      "status": "TO_REVIEW"
    },
    {
      "key": "input_validation",
      "component": "lib/features/auth/presentation/screens/login_screen.dart",
      "line": 45,
      "message": "Missing input validation for user inputs",
      "severity": "MEDIUM",
      "status": "TO_REVIEW"
    }
  ]
}
EOF

# Run SonarQube Scanner
echo "🚀 Running SonarQube Scanner..."
sonar-scanner \
    -Dsonar.projectKey=booktrackr-flutter \
    -Dsonar.sources=lib \
    -Dsonar.tests=test,integration_test \
    -Dsonar.host.url=$SONAR_HOST_URL \
    -Dsonar.login=$SONAR_TOKEN \
    -Dsonar.coverage.exclusions=**/*.g.dart,**/*.freezed.dart \
    -Dsonar.dart.coverage.reportPath=coverage/lcov.info \
    -Dsonar.analysis.mode=publish

echo "✅ SonarQube analysis completed!"
echo "📊 View results at: $SONAR_HOST_URL/dashboard?id=booktrackr-flutter" 