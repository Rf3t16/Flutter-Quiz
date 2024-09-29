import 'package:flutter/material.dart';
import '../controllers/quiz_controller.dart';
import '../utils/styles.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final QuizController _quizController = QuizController();
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final String? userName =
        ModalRoute.of(context)!.settings.arguments as String?;

    if (userName == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, '/');
      });
      return Container();
    }

    return Scaffold(
      appBar: AppStyles.appBarStyle('Quiz'),
      body: Padding(
        padding: AppStyles.commonPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $userName!',
              style: AppStyles.headingStyle,
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                _quizController.getCurrentQuestion(currentQuestionIndex),
                style: AppStyles.bodyTextStyle,
              ),
            ),
            const SizedBox(height: 20),
            ..._quizController
                .getCurrentChoices(currentQuestionIndex)
                .map((choice) {
              return ListTile(
                title: Text(choice),
                leading: Radio<String>(
                  value: choice,
                  groupValue: _quizController.selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      _quizController.selectedAnswer = value!;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _quizController.selectedAnswer = choice;
                  });
                },
              );
            }).toList(),
            const SizedBox(height: 20),
            ElevatedButton(
              style: AppStyles.elevatedButtonStyle,
              onPressed: _quizController.selectedAnswer.isNotEmpty
                  ? () {
                      _quizController.submitAnswer(currentQuestionIndex);
                      if (currentQuestionIndex <
                          _quizController.totalQuestions - 1) {
                        setState(() {
                          currentQuestionIndex++;
                          _quizController.selectedAnswer = '';
                        });
                      } else {
                        Navigator.pushNamed(
                          context,
                          '/result',
                          arguments: {
                            'userName': userName,
                            'score': _quizController.getScore(),
                            'totalQuestions': _quizController.totalQuestions,
                          },
                        );
                      }
                    }
                  : null,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
