import '../models/quiz_model.dart';

class QuizController {
  final List<QuizModel> _questions = [
    QuizModel(
      question: 'What is the capital of France?',
      choices: ['Paris', 'Berlin', 'Madrid', 'Lisbon'],
      correctAnswer: 'Paris',
    ),
    QuizModel(
      question: 'What is 2 + 2?',
      choices: ['3', '4', '5', '6'],
      correctAnswer: '4',
    ),
    QuizModel(
      question: 'Which is a programming language?',
      choices: ['Flutter', 'Apple', 'Banana', 'Dog'],
      correctAnswer: 'Flutter',
    ),
  ];

  String selectedAnswer = '';
  int _score = 0;

  String getCurrentQuestion(int index) {
    return _questions[index].question;
  }

  List<String> getCurrentChoices(int index) {
    return _questions[index].choices;
  }

  void submitAnswer(int index) {
    if (_questions[index].isCorrect(selectedAnswer)) {
      _score++;
    }
  }

  int getScore() {
    return _score;
  }

  void resetQuiz() {
    _score = 0;
    selectedAnswer = '';
  }

  int get totalQuestions => _questions.length;
}
