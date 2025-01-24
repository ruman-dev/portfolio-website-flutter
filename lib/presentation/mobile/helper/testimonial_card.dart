import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialCard extends StatelessWidget {
  final String name;
  final String position;
  final String text;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.position,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: Color.fromARGB(255, 31, 41, 55),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: const AssetImage('assets/images/avatar.jpg'),
              ),
              const SizedBox(height: 16),
              Text(
                '"$text"',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                name,
                style: GoogleFonts.aldrich(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                position,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
