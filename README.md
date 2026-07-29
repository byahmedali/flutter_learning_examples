# Flutter Learning Examples

This project is a beginner-friendly Flutter learning app that brings together several small but useful examples in one place. Instead of focusing on just one feature, it serves as a dashboard of practical Flutter concepts for students and beginners.

## What this app includes

The app contains multiple demo screens covering common Flutter topics:

- Firebase authentication login demo
- API data fetching
- Camera access
- Device location access
- Navigation between screens
- Passing data between screens
- Shared Preferences storage
- Card, ListTile, and ListView examples

## Technologies used

- Flutter
- Dart
- Firebase Core
- Firebase Authentication
- http
- shared_preferences
- camera
- geolocator

## Project structure

- [lib/main.dart](lib/main.dart) - app entry point and app configuration
- [lib/app_router.dart](lib/app_router.dart) - route handling for the demo screens
- [lib/screens/learning_dashboard_screen.dart](lib/screens/learning_dashboard_screen.dart) - main dashboard that lists all examples
- [lib/features](lib/features) - feature-based folders for each demo category

## How to run the project

1. Make sure Flutter is installed on your machine.
2. Install the dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

4. If you want to use the Firebase authentication part, make sure your Firebase project is configured properly:

   ```bash
   flutterfire configure
   ```

## Notes

This project is intended for learning and practice. It is a simple example app and not meant for production use.

It is a good starting point for understanding how Flutter apps can be organized into reusable features while still staying easy to follow.
