# [Quiz App ❓]
The Quiz Flutter App is an interactive mobile application that allows users to take a fun and engaging quiz on various topics. Users can enter their name to start the quiz and answer a series of multiple-choice questions. The app provides instant feedback on the user's performance, displaying the score at the end. It's designed to be user-friendly, with a modern interface that enhances the overall experience.

# [GIF]
![Loading...](Gif/Gif.gif)

## [Features]
### User Authentication:
- Users can enter their name on the welcome screen before starting the quiz.
### Dynamic Quiz Questions:
- The app presents a series of three multiple-choice questions, each with four answer options.
### Score Calculation:
- The app tracks user answers and calculates the score, displaying it in a fraction format (correct answers/total questions) at the end of the quiz.
### User-Friendly UI:
- Modern and responsive design with an intuitive interface that enhances user experience.
- Includes a centralized styles file for easy customization of text, background, and color elements.
### Navigation:
- Smooth transitions between screens, utilizing Flutter's navigation system to move from the welcome screen to the quiz and results screens.
### Real-Time Feedback:
- Provides immediate feedback after answering each question, highlighting the selected answer and allowing users to navigate to the next question easily.
### State Management:
- Utilizes efficient state management to maintain the flow of the quiz and the current score without data loss during navigation.
### Image Handling:
- A utility file that allows easy access to image assets used throughout the app.

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

── controllers/
   ── quiz_controller.dart        # Manages quiz logic and state

── models/
   ── quiz_model.dart             # Defines quiz data structure

── utils/
   ── img.dart                    # Image asset paths
   ── styles.dart                 # App styles and themes

── views/
   ── welcome_screen.dart         # Welcome screen for user input
   ── quiz_screen.dart            # Quiz question display
   ── result_screen.dart          # Displays the results after the quiz

── main.dart                       # Entry point of the application

── routes.dart                     # Defines app routes
