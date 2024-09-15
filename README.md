# To-Do List App

A simple and intuitive To-Do List application built with Flutter and Hive for local data storage. This app allows users to add, delete, and check off tasks, with all data persisted locally on the device.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- **Add Tasks**: Easily add new tasks to your to-do list.
- **Delete Tasks**: Remove tasks that are no longer needed.
- **Mark Tasks as Completed**: Check off tasks as you complete them.
- **Persistent Storage**: All tasks are saved locally using Hive, ensuring your data is retained between app sessions.

## Screenshots

<img width="447" alt="Screenshot 2024-09-15 at 9 14 18 PM" src="https://github.com/user-attachments/assets/b9d7567b-cf1a-471f-9c23-819aa7bfeed6"><img width="446" alt="Screenshot 2024-09-15 at 9 14 27 PM" src="https://github.com/user-attachments/assets/64e22f6d-b9df-4e2e-b006-df5b1af93ae1">



## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites

- **Flutter SDK**: [Install Flutter](https://flutter.dev/docs/get-started/install) on your machine.
- **Dart SDK**: Comes pre-packaged with Flutter.
- **Android Studio or Visual Studio Code**: Recommended IDEs for Flutter development.
- **An Emulator or Physical Device**: To run and test the app.

### Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Install Dependencies**

   Navigate to the project directory and run:

   ```bash
   flutter pub get
   ```

3. **Run the App**

   Connect your device or start an emulator, then execute:

   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── data/
│   └── database.dart          # Handles data storage and retrieval using Hive
├── ui/
│   └── views/
│       └── home_page.dart     # Main UI of the application
├── utils/
│   ├── dialog_box.dart        # Custom dialog for adding new tasks
│   ├── my_button.dart         # Reusable button widget
│   └── todo_tile.dart         # Widget for displaying each task
└── main.dart                  # Entry point of the application
```

## Dependencies

The app relies on the following packages:

- [flutter](https://flutter.dev/)
- [hive](https://pub.dev/packages/hive)
- [hive_flutter](https://pub.dev/packages/hive_flutter)

Make sure these dependencies are included in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  hive: ^2.2.3
  hive_flutter: ^1.1.0
```

## Usage

- **Adding a Task**: Tap the '+' floating action button at the bottom right to open the dialog box. Enter the task name and tap 'Save'.
- **Marking a Task as Completed**: Tap the checkbox next to a task to mark it as completed. The task text will be struck through.
- **Deleting a Task**: Tap the trash can icon next to a task to delete it from the list.

## Contributing

Contributions are what make the open-source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. **Fork the Project**
2. **Create your Feature Branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit your Changes** (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the Branch** (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Paula Selim - [paula.selim.contact@icloud.com](mailto:paula.selim.contact@icloud.com)
