import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/ruman_pic_2.png'),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'I am a skilled Flutter developer with experience in creating cross-platform applications. My passion lies in building beautiful, functional, and user-friendly applications that solve real-world problems.\n\n\n\n\n\n'
                          'I am a skilled Flutter developer with experience in creating cross-platform applications. My passion lies in building beautiful, functional, and user-friendly applications that solve real-world problems.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/ruman_pic_2.png'),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'I am a skilled Flutter developer with experience in creating cross-platform applications. My passion lies in building beautiful, functional, and user-friendly applications that solve real-world problems.\n\n\n\n\n\n'
                          'I am a skilled Flutter developer with experience in creating cross-platform applications. My passion lies in building beautiful, functional, and user-friendly applications that solve real-world problems.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
