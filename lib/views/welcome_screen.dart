import 'package:flutter/material.dart';
import '../utils/styles.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppStyles.appBarStyle('Welcome'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/pngegg.png', height: 200, width: 200),
          const SizedBox(height: 20),
          Padding(
            padding: AppStyles.commonPadding,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Enter your name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      } else if (RegExp(r'\d').hasMatch(value)) {
                        return 'Name cannot contain numbers';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      name = value!;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: AppStyles.elevatedButtonStyle,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Navigator.pushNamed(context, '/quiz', arguments: name);
                      }
                    },
                    child: const Text('Start Quiz'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
