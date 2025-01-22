import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hi, I\'m ',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 5),
                            ),
                            Text(
                              'Ruman',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 5,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 22, letterSpacing: 8),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue.shade800),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  const Text(
                                    'Hire me',
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/ruman_picture.png'),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, I\'m Ruman',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue.shade800),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  const Text(
                                    'Hire me',
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage('assets/images/ruman_picture.png'),
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
