import 'package:flutter/material.dart';
import 'views/welcome_screen.dart';
import 'views/quiz_screen.dart';
import 'views/result_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const WelcomeScreen(),
  '/quiz': (context) => const QuizScreen(),
  '/result': (context) => const ResultScreen(),
};
