# otp_auth

# Flutter OTP Auth App with Firebase

This repository contains a Flutter application that demonstrates how to implement OTP (One-Time Password) authentication using Firebase Authentication. The app allows users to sign in to their accounts using their mobile phone numbers and verifies their identity through OTP verification.




<img src="https://github.com/AyushSinghAryan/otpAuth/assets/100014110/964d90c8-562d-49e4-9aae-5ece5be25581.gif" width="480" height="800"/>














## Features

- User registration and login using mobile phone numbers
- Verification of user identity through OTP verification
- Firebase Authentication integration for user management
- Clean and user-friendly UI design
- Error handling and validation for input fields
- Support for multiple languages (internationalization)

## Requirements

To run this application, you need to have the following:

- Flutter SDK installed on your development environment
- A Firebase project with Firebase Authentication enabled

## Getting Started

1. Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/AyushSinghAryan/otpAuth
   ```

2. Navigate to the project directory:

   ```bash
   cd otp-auth
   ```

3. Install the required dependencies:

   ```bash
   flutter pub get
   ```

4. Configure Firebase for the project:
   - Create a new Firebase project (if you haven't already) at the [Firebase Console](https://console.firebase.google.com).
   - Enable Firebase Authentication and set up Phone Number sign-in method.
   - Download the `google-services.json` file for Android or `GoogleService-Info.plist` file for iOS from the Firebase Console.
   - Replace the existing configuration files in the respective platform folders (`android/app` for Android and `ios/Runner` for iOS) with the downloaded files.

5. Run the app on your preferred device or emulator:

   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please create a pull request or open an issue in this repository.

## Acknowledgements

This app was developed using Flutter, an open-source UI toolkit by Google. It utilizes Firebase services for authentication. Special thanks to the Flutter and Firebase communities for their valuable resources and support.

If you have any questions or need further assistance, please don't hesitate to reach out to us. Happy coding!
