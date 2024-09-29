class QuizModel {
  final String question;
  final List<String> choices;
  final String correctAnswer;

  QuizModel({
    required this.question,
    required this.choices,
    required this.correctAnswer,
  });

  bool isCorrect(String selectedAnswer) {
    return selectedAnswer == correctAnswer;
  }
}
