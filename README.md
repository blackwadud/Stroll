# Stroll Bonfire Flutter App

## Overview
**Stroll Bonfire** is a visually stunning Flutter application designed to enhance user interaction by providing meaningful questions and feedback options in a sleek and intuitive interface. Users can engage with various questions, interact via polls, and enjoy a seamless app experience.

## Features
- **Dynamic Questions**: Display unique and thought-provoking questions for user interaction.
- **Poll Options**: Interactive options allow users to select their answers easily.
- **Modern UI/UX**: A clean and aesthetic design with engaging animations and vibrant visuals.
- **Customizable Settings**: Users can configure preferences for a personalized experience.
- **Responsive Design**: Ensures optimal performance across various screen sizes and devices.

## Getting Started

### Prerequisites
- **Flutter SDK**: Ensure you have Flutter installed on your system. You can download it [here](https://flutter.dev/docs/get-started/install).
- **Dart**: Dart is required for Flutter development (comes bundled with Flutter SDK).

### Installation
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd stroll
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

### Platform Support
The app supports the following platforms:
- Android
- iOS

## Folder Structure
The project follows the standard Flutter project structure:
```
stroll_bonfire/
│
├── lib/                   # Main application files
│   ├── main.dart          # Entry point of the app
│   ├── modules/           # UI functionalities screens and layouts
│   ├── widgets/           # Custom reusable widgets
│   ├── config/             # app components 
│   └── constants/         # static data models
│
├── assets/                # Static assets (images, fonts)
├── pubspec.yaml           # Project dependencies and metadata
└── README.md              # Project documentation
```

## Key Components
- **Question Widget**: Dynamically displays a question with user-specific data.
- **Poll Options**: Provides clickable buttons for user input.
- **Profile Integration**: Displays profile information such as name, age, and avatar.
- **Animations**: Smooth transitions and UI interactions for an immersive experience.

## Dependencies
The app uses the following primary dependencies:
- `flutter`: The main framework for app development.
- `provider`: For state management.
- `http`: For API communication.
- `flutter_svg`: To render scalable vector graphics.
- `animations`: For custom animations.

Refer to `pubspec.yaml` for a complete list of dependencies.

## Customization
You can modify the app’s content and behavior:
1. Update the questions in the API or hardcoded list.
2. Customize the color scheme in `theme.dart`.
3. Add additional widgets in the `widgets/` folder.

## Contributions
We welcome contributions! To contribute:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes and push to the branch.
4. Open a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact
For questions or feedback, please contact:
- **Email**: [bakaretim18@gmail.com]
- **GitHub**: [blackwadud]
