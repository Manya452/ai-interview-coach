import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const AIInterviewCoach());
}

class AIInterviewCoach extends StatelessWidget {
  const AIInterviewCoach({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Interview Coach',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.indigo,
      ),
      home: const LoginScreen(),
    );
  }
}
