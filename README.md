# BookTrackr 📚

A Letterboxd-style book tracking Flutter app for iOS and Android, inspired by [kaguya.io](https://kaguya.io).

## Features

### ✅ Implemented (Phase 1)
- **Authentication Flow**: Email/password and Google sign-in (Firebase Auth)
- **Book Browsing**: Browse and search through a curated collection of books
- **Book Details**: View comprehensive book information with ratings and descriptions
- **Modern UI**: Clean, responsive design with Material 3 components
- **Theme Support**: Light and dark mode with system preference detection
- **Navigation**: Bottom navigation with Home, Library, and Profile sections
- **Offline Storage**: Hive database for local data persistence
- **State Management**: Riverpod for reactive state management

### 🚧 Planned Features (Future Phases)
- **Bookshelf Management**: Want to Read, Reading, Completed, DNF statuses
- **Reading Progress**: Track current page and reading progress
- **Reviews & Ratings**: Add personal ratings and reviews
- **Push Notifications**: Firebase Cloud Messaging for book updates
- **Google Books API**: Real book data integration
- **Social Features**: Share reading lists and recommendations
- **Reading Goals**: Set and track reading goals
- **Analytics**: Reading statistics and insights

## Tech Stack

- **Framework**: Flutter 3.8+
- **State Management**: Riverpod
- **Authentication**: Firebase Auth
- **Local Storage**: Hive
- **Routing**: GoRouter
- **Code Generation**: Freezed, JSON Serializable, Riverpod Generator
- **UI Components**: Flutter Hooks, Material 3
- **Image Loading**: Cached Network Image

## Project Structure

```
lib/
├── core/
│   ├── constants/          # App constants and configuration
│   ├── data/              # Dummy data and data sources
│   ├── routing/           # Navigation configuration
│   ├── services/          # Core services (Hive, Firebase)
│   └── theme/             # App theming
├── features/
│   ├── auth/              # Authentication feature
│   │   ├── data/          # Auth data layer
│   │   ├── domain/        # Auth business logic
│   │   └── presentation/  # Auth UI screens
│   ├── books/             # Books feature
│   │   ├── data/          # Books data layer
│   │   ├── domain/        # Books business logic
│   │   └── presentation/  # Books UI screens and widgets
│   └── profile/           # Profile feature
│       ├── data/          # Profile data layer
│       ├── domain/        # Profile business logic
│       └── presentation/  # Profile UI screens
└── shared/
    ├── models/            # Shared data models
    ├── providers/         # Shared Riverpod providers
    └── widgets/           # Shared UI components
```

## Getting Started

### Prerequisites

- Flutter SDK 3.8.0 or higher
- Dart SDK 3.8.0 or higher
- Android Studio / VS Code
- Firebase project (for authentication)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd book_tracker
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code files**
   ```bash
   flutter packages pub run build_runner build --delete-conflicting-outputs
   ```

4. **Firebase Setup** (Optional for now)
   - Create a Firebase project
   - Add your Android/iOS apps
   - Download and add the configuration files
   - Enable Authentication (Email/Password and Google Sign-in)

5. **Run the app**
   ```bash
   flutter run
   ```

## Development Phases

### Phase 1: Foundation ✅
- [x] Project setup and dependencies
- [x] Authentication with Firebase
- [x] Basic UI components and theming
- [x] Navigation and routing
- [x] Book browsing with dummy data
- [x] Local storage with Hive

### Phase 2: Core Features (Next)
- [ ] Bookshelf management (Want to Read, Reading, Completed)
- [ ] Book detail interactions (add to shelf, rate, review)
- [ ] Reading progress tracking
- [ ] Offline-first data sync

### Phase 3: Advanced Features
- [ ] Google Books API integration
- [ ] Push notifications
- [ ] Reading goals and analytics
- [ ] Social features

### Phase 4: Polish & Performance
- [ ] Performance optimizations
- [ ] Accessibility improvements
- [ ] Comprehensive testing
- [ ] App store preparation

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by [kaguya.io](https://kaguya.io) and Letterboxd
- Built with Flutter and Firebase
- Icons from Material Design
