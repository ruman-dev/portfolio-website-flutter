import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/data/portfolio_data.dart';
import 'package:portfolio_website/presentation/helper/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key, required this.projectKey});
  final Key projectKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: projectKey,
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      color: Color.fromARGB(255, 17, 24, 39),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Projects',
            style: GoogleFonts.lexend(
              fontSize: 30,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectData.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                title: projectData[index]['title'] as String,
                description: projectData[index]['description'] as String,
                components: (projectData[index]['components'] as List<String>),
                imageUrl: projectData[index]['imageUrl'] as String,
                projectUrl: projectData[index]['projectUrl'] as String,
              );
            },
          ),
        ],
      ),
    );
  }
}
