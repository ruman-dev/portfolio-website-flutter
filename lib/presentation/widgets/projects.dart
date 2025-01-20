import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/helper/project_card.dart';

class Projects extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'BidSell - An Online Auction Platform',
      'description':
          '''A project description is a high-level overview of why you’re doing a project. The document explains a project’s objectives and its essential qualities. Think of it as the elevator pitch that focuses on what and why without delving into how. 

You typically draft a project description early on, during the project initiation phase of the project management lifecycle.

The project manager often writes the project description. However, if you are working for an agency that seeks grant funding or writing a research proposal, you might need to learn how to write a project description in a project proposal.

The project description should include an overview of the following:

Project goals and objectives
Stakeholders and their roles
Metrics for measuring success
Timeline
Estimated budget
The tricky part is figuring out what doesn’t belong in the project description. The description should focus on goals, objectives, and the overall approach, but you don’t need to include lists of tasks, an extensive background, or research analysis. In general, the project description is broad; you’ll include more detail in the project plan.''',
      'imageUrl': 'assets/images/bidsell_pic.png',
    },
    {
      'title': 'Quizzer - A Quiz App',
      'description':
          'Get ready to test your knowledge with a quiz app. This app is designed to test your knowledge on various topics. You can select a topic and start answering questions. The app will show you the correct answer if you get it wrong. You can also see your score at the end of the quiz. The app is built using Flutter and Firebase. The app is designed to be responsive and works on both Android and iOS devices. The app is also integrated with Firebase to store user data and quiz data. Used Trivia API which is a RESTful API to fetch quiz data.',
      'imageUrl': 'assets/images/quiz_app_pic.png',
    },
  ];

  Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                title: projects[index]['title']!,
                description: projects[index]['description']!,
                imageUrl: projects[index]['imageUrl']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
