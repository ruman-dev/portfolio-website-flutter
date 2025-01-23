import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/helper/skill_card.dart';

import '../data/portfolio_data.dart';

class Skills extends StatelessWidget {
  const Skills({super.key, required this.skillsKey});
  final Key skillsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: skillsKey,
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      child: Column(
        children: [
          Text(
            'Skills',
            style: GoogleFonts.lexend(
              fontSize: 30,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children:
                skillsData.map((skill) => SkillCard(skill: skill)).toList(),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
