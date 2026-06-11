import 'package:flutter/material.dart';
import 'interview_screen.dart';

class InterviewCategoryScreen extends StatelessWidget {
  const InterviewCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        "title": "Flutter Developer",
        "icon": Icons.phone_android,
      },
      {
        "title": "Java Developer",
        "icon": Icons.code,
      },
      {
        "title": "Data Analyst",
        "icon": Icons.analytics,
      },
      {
        "title": "HR Interview",
        "icon": Icons.people,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Interview"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: categories.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const InterviewScreen(),
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Icon(
                    categories[index]["icon"],
                    size: 50,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categories[index]["title"],
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}