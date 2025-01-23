import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/portfolio_data.dart';

class About extends StatelessWidget {
  const About({super.key, required this.aboutKey});

  final Key aboutKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutKey,
      color: Color.fromARGB(255, 17, 24, 39),
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/ruman_pic_2.png',
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 80),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Me',
                  style: GoogleFonts.lexend(
                    fontSize: 30,
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  aboutDescText,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
