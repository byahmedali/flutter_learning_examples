# Firebase Login Demo

This is a simple Flutter demo project for learning Firebase Authentication.

It shows how to build a basic login experience with email and password using Firebase.

## What this app does

This demo app lets a user:

- sign in with an email and password
- sign up for a new account
- see a simple home screen after login
- log out and return to the login screen

## Technologies used

- Flutter
- Firebase Core
- Firebase Authentication

## Project structure

- [lib/main.dart](lib/main.dart) - starts the app and initializes Firebase
- [lib/login.dart](lib/login.dart) - contains the login and sign-up screen
- [lib/home.dart](lib/home.dart) - shows the screen after a successful login

## How to run the project

1. Make sure Flutter is installed on your computer.
2. Create a Firebase project in the Firebase console.
3. Enable Email/Password sign-in in Firebase Authentication.
4. Run the following command to connect your app to Firebase:

   ```bash
   flutterfire configure
   ```

5. Install the dependencies:

   ```bash
   flutter pub get
   ```

6. Run the app:

   ```bash
   flutter run
   ```

## Notes

This is a beginner-friendly demo project. It is meant for learning and practice, not for a full production app.

If you are new to Flutter or Firebase, this project is a good starting point to understand the basics of authentication in a mobile app.
