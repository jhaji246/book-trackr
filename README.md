# 📚 BookTrackr

A Letterboxd-style book tracking app built with Flutter, Firebase, and Riverpod. Track your reading journey with a modern, offline-first architecture.

![BookTrackr App](https://img.shields.io/badge/Flutter-3.19.0-blue?style=for-the-badge&logo=flutter)
![Firebase](https://img.shields.io/badge/Firebase-Cloud%20Platform-orange?style=for-the-badge&logo=firebase)
![Riverpod](https://img.shields.io/badge/Riverpod-State%20Management-purple?style=for-the-badge)

## ✨ Features

### 🔐 Authentication
- **Email/Password Sign-in** - Secure user authentication
- **Google Sign-in** - One-tap authentication
- **Password Reset** - Forgot password functionality
- **Session Management** - Remember user sessions

### 📚 Book Management
- **Google Books API Integration** - Real book data and covers
- **Reading Progress Tracking** - Track current page and completion
- **Bookshelf Organization** - Want to Read, Currently Reading, Completed
- **Book Ratings & Reviews** - Rate books (1-5 stars) and add reviews
- **Search & Browse** - Find books by title, author, or genre

### 📱 User Experience
- **Offline-First Design** - Works without internet using Hive
- **Modern UI/UX** - Material Design 3 with dark/light themes
- **Responsive Design** - Works on all screen sizes
- **Smooth Navigation** - Intuitive app flow

### 🎯 Reading Goals
- **Reading Statistics** - Track books read, average rating
- **Reading Goals** - Set yearly book targets
- **Reading Streaks** - Maintain reading consistency
- **Genre Challenges** - Explore different book genres

### 🔔 Notifications
- **Reading Reminders** - Get notified to continue reading
- **Goal Progress** - Celebrate reading milestones
- **New Book Alerts** - Discover new books in your genres

## 🛠️ Tech Stack

### Frontend
- **Flutter 3.19.0** - Cross-platform mobile development
- **Dart** - Programming language
- **Material Design 3** - Modern UI components
- **Flutter Hooks** - React-inspired hooks for Flutter

### State Management
- **Riverpod** - Modern state management solution
- **Riverpod Generator** - Code generation for providers
- **Hooks Riverpod** - Integration with Flutter Hooks

### Backend & Services
- **Firebase Authentication** - User authentication
- **Cloud Firestore** - NoSQL database
- **Firebase Cloud Messaging** - Push notifications
- **Google Books API** - Book data and covers

### Local Storage
- **Hive** - Fast, lightweight NoSQL database
- **Hive Flutter** - Flutter integration
- **Offline-First** - Works without internet

### Code Generation
- **Freezed** - Immutable data classes
- **JSON Serializable** - JSON serialization
- **Build Runner** - Code generation tool

## 📱 Screenshots

### Authentication Flow
- Login screen with email/password and Google Sign-in
- Signup screen with form validation
- Password reset functionality

### Main App Features
- Home screen with featured books and search
- Book detail screen with ratings and reviews
- Library screen with reading progress
- Profile screen with statistics and settings

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.19.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Firebase project setup

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/jhaji246/book-trackr.git
   cd book-trackr
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Setup Firebase**
   - Create a Firebase project
   - Add Android/iOS apps
   - Download `google-services.json` and `GoogleService-Info.plist`
   - Enable Authentication, Firestore, and Cloud Messaging

4. **Run the app**
   ```bash
   flutter run
   ```

### Firebase Configuration

1. **Authentication**
   - Enable Email/Password authentication
   - Enable Google Sign-in
   - Configure OAuth consent screen

2. **Firestore Database**
   - Create database in test mode
   - Set up security rules

3. **Cloud Messaging**
   - Enable Firebase Cloud Messaging
   - Configure notification settings

## 📁 Project Structure

```
lib/
├── core/
│   ├── constants/          # App constants
│   ├── routing/           # Navigation setup
│   ├── services/          # Core services
│   ├── theme/            # App theming
│   └── data/             # Dummy data
├── features/
│   ├── auth/             # Authentication
│   ├── books/            # Book management
│   ├── profile/          # User profile
│   └── goals/            # Reading goals
└── shared/
    ├── models/           # Data models
    ├── providers/        # State management
    └── widgets/          # Shared components
```

## 🔧 Development

### Code Generation
```bash
# Generate code for models, providers, etc.
flutter packages pub run build_runner build

# Watch for changes
flutter packages pub run build_runner watch
```

### Testing
```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/
```

## 📊 Features Status

| Feature | Status | Description |
|---------|--------|-------------|
| Authentication | ✅ Complete | Email/password + Google Sign-in |
| Book Browsing | ✅ Complete | Google Books API integration |
| Reading Progress | ✅ Complete | Track current page and status |
| Offline Support | ✅ Complete | Hive local storage |
| Push Notifications | ✅ Complete | Firebase Cloud Messaging |
| Reading Goals | ✅ Complete | Goal setting and tracking |
| Dark/Light Theme | ✅ Complete | Material Design 3 theming |

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Abhilash Jha** - [GitHub Profile](https://github.com/jhaji246)

- Mobile App Developer
- Native Android and Flutter Experience
- Software Testing

## 🙏 Acknowledgments

- [Flutter Team](https://flutter.dev/) for the amazing framework
- [Firebase](https://firebase.google.com/) for backend services
- [Google Books API](https://developers.google.com/books) for book data
- [Riverpod](https://riverpod.dev/) for state management
- [Material Design](https://material.io/) for design guidelines

## 📞 Contact

- **GitHub**: [@jhaji246](https://github.com/jhaji246)
- **Location**: Lucknow, India

---

⭐ **Star this repository if you found it helpful!**
