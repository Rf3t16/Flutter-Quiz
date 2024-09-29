import 'package:flutter/material.dart';
import '../controllers/quiz_controller.dart';
import '../utils/styles.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (arguments == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, '/');
      });
      return Container();
    }

    final String? userName = arguments['userName'];
    final int score = arguments['score'] ?? 0;
    final int totalQuestions = arguments['totalQuestions'] ?? 3;

    QuizController _quizController = QuizController();

    return Scaffold(
      appBar:
          AppStyles.appBarStyle('Results', automaticallyImplyLeading: false),
      body: Center(
        child: Padding(
          padding: AppStyles.commonPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/pngegg.png', height: 200, width: 200),
              Text(
                'Congratulations, $userName!',
                style: AppStyles.headingStyle,
              ),
              const SizedBox(height: 20),
              Text(
                'Your score: $score/$totalQuestions',
                style: AppStyles.bodyTextStyle,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: AppStyles.elevatedButtonStyle,
                onPressed: () {
                  _quizController.resetQuiz();
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: const Text('Finish'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
