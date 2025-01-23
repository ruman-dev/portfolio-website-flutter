import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/data/portfolio_data.dart';
import 'package:portfolio_website/presentation/helper/testimonial_card.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key, required this.testimonialKey});
  final Key testimonialKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: testimonialKey,
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
      child: Column(
        children: [
          Text(
            'Testimonials',
            style: GoogleFonts.lexend(
              fontSize: 30,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: testimonialData
                .map((t) => Expanded(
                      child: TestimonialCard(
                        name: t['name']!,
                        position: t['position']!,
                        text: t['text']!,
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
