import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/helper/skill_card.dart';

class Skills extends StatelessWidget {
  final List<String> skills = [
    'https://www.vectorlogo.zone/logos/flutterio/flutterio-ar21.svg',
    'https://www.vectorlogo.zone/logos/dartlang/dartlang-ar21.svg',
    'https://www.vectorlogo.zone/logos/android/android-ar21.svg',
    'https://www.vectorlogo.zone/logos/figma/figma-ar21.svg',
    'https://www.vectorlogo.zone/logos/git-scm/git-scm-ar21.svg',
    'https://www.vectorlogo.zone/logos/github/github-ar21.svg',
    'https://www.vectorlogo.zone/logos/getpostman/getpostman-ar21.svg',
    'https://www.vectorlogo.zone/logos/google_play/google_play-ar21.svg',
    'https://www.vectorlogo.zone/logos/apple_appstore/apple_appstore-ar21.svg',
    'https://www.vectorlogo.zone/logos/firebase/firebase-ar21.svg',
    'https://www.vectorlogo.zone/logos/mysql/mysql-ar21.svg',
    'https://www.vectorlogo.zone/logos/w3_html5/w3_html5-ar21.svg',
    'https://www.vectorlogo.zone/logos/tailwindcss/tailwindcss-ar21.svg',
    'https://www.vectorlogo.zone/logos/javascript/javascript-ar21.svg',
    'https://www.vectorlogo.zone/logos/java/java-ar21.svg',
    'https://www.vectorlogo.zone/logos/kotlinlang/kotlinlang-ar21.svg',
  ];

  Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: skills.map((skill) => SkillCard(skill: skill)).toList(),
          ),
        ],
      ),
    );
  }
}
