# Todo List App

A Flutter task management application with local storage and state management.

## Features
- Create, read, update and delete tasks
- Mark tasks as Pending/Done
- Filter tasks by status
- Local data persistence using Hive
- State management with GetX
- Responsive UI with theme support

## Technologies Used
- **Flutter**: Cross-platform framework
- **Hive**: Lightweight NoSQL database for local storage
- **GetX**: State management and dependency injection
- **Lottie**: Animation library for empty states



## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart (>=2.17.0)
- Android Studio/VSCode with Flutter plugin

### Installation
1. Clone the repository
2. Install dependencies:
```bash
flutter pub get
```

3. Generate Hive adapters:
```bash
flutter packages pub run build_runner build
```

4. Run the app:
```bash
flutter run
```

## Running Tests
```bash
flutter test
```

## Database Structure
- Uses Hive NoSQL database
- Todo model stored in Box<Todo>
- Automatic type adapters generated
- Data persists between app restarts

## State Management
- GetX for reactive state
- HomeController manages:
  - Todo list state
  - Filtering logic
  - CRUD operations
- Obx widgets for reactive UI updates

## Screenshots
| | |
|-|-|
| ![Screenshot 2](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.46.26.png) |
| ![Screenshot 3](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.47.08.png) | ![Screenshot 4](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.47.16.png) |
| ![Screenshot 5](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.48.14.png) | ![Screenshot 6](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.48.24.png) |
| ![Screenshot 7](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.48.30.png) | ![Screenshot 8](assets/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202025-05-04%20at%2011.48.42.png) |
![alt text](<Simulator Screenshot - iPhone 16 Pro - 2025-05-04 at 11.59.44.png>)


