import 'package:flutter/material.dart';

class InterviewScreen extends StatefulWidget {
  const InterviewScreen({super.key});

  @override
  State<InterviewScreen> createState() =>
      _InterviewScreenState();
}

class _InterviewScreenState
    extends State<InterviewScreen> {

  final List<String> questions = [
    "Tell me about yourself.",
    "What is Flutter?",
    "Difference between Stateful and Stateless Widgets?",
    "Explain REST API.",
    "What are your strengths?"
  ];

  int currentQuestion = 0;

  final TextEditingController answerController =
      TextEditingController();

  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        answerController.clear();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Interview Completed 🎉",
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mock Interview"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            LinearProgressIndicator(
              value:
                  (currentQuestion + 1) /
                  questions.length,
            ),

            const SizedBox(height: 30),

            Text(
              questions[currentQuestion],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: answerController,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText:
                    "Type your answer here...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: nextQuestion,
                child:
                    const Text("Next Question"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}