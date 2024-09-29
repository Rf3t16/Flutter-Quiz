# [Quiz App 📋]
The Quiz Flutter App is an interactive mobile application that allows users to take a fun and engaging quiz on various topics. Users can enter their name to start the quiz and answer a series of multiple-choice questions. The app provides instant feedback on the user's performance, displaying the score at the end. It's designed to be user-friendly, with a modern interface that enhances the overall experience.

# [GIF]
![Loading...](Gif/Gif.gif)

## [Features]
### Task Management:
- Add tasks for specific times using a bottom sheet modal.
- Each task can contain multiple items (subtasks) that can be marked as completed, edited, or deleted.
- Task items are displayed in an Expansion Panel that allows users to collapse or expand tasks to view and interact with the items.

### Task Persistence:
- The app supports tasks at different times (e.g., 7:00 AM, 9:00 AM, etc.), and you can add or update tasks by simply reusing the same time as the title.

### User-friendly UI:
- Modern design with easily customizable styles for text, background, and color elements (managed in a centralized app_style.dart file).
- Visual feedback for completed tasks with a strikethrough on task items and progress updates on the number of completed tasks vs. total items.
- Real-time UI updates through Provider for state management.

### Task Item Editing:
- Each task item can be edited or deleted through a dialog.
- Automatic deletion of tasks if all items are removed.

## [Architecture]
The app follows the MVC (Model-View-Controller) architecture pattern, which separates the application logic into three interconnected components:
Model:
Contains the data structure for the quiz questions (e.g., QuizModel).
Handles the business logic (e.g., scoring, checking correct answers) through the QuizController.
View:
Composed of the UI elements and screens (e.g., WelcomeScreen, QuizScreen, ResultScreen).
Responsible for presenting the data to the user and capturing user interactions.
Controller:
Acts as an intermediary between the Model and View.
Manages the flow of data and updates the View based on user actions.
Handles user input, submits answers, and updates the score accordingly.
## [ Directory Structure ]
lib/
├── controllers/
│   └── quiz_controller.dart   # Manages quiz logic and state
├── models/
│   └── quiz_model.dart        # Defines quiz data structure
├── utils/
│   ├── img.dart               # Image asset paths
│   └── styles.dart            # App styles and themes
├── views/
│   ├── welcome_screen.dart     # Welcome screen for user input
│   ├── quiz_screen.dart        # Quiz question display
│   └── result_screen.dart      # Displays the results after the quiz
├── main.dart                   # Entry point of the application
└── routes.dart                 # Defines app routes
