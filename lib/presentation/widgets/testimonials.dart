import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/helper/testimonial_card.dart';

class Testimonials extends StatelessWidget {
  final List<Map<String, String>> testimonials = [
    {
      'name': 'John Doe',
      'position': 'CEO, Tech Corp',
      'text': 'Ruman is an exceptional developer who delivers high-quality work.',
    },
    {
      'name': 'Jane Smith',
      'position': 'Project Manager',
      'text': 'Working with Ruman was a great experience. Very professional and skilled.',
    },
    {
      'name': 'Jane Smith',
      'position': 'Project Manager',
      'text': 'Working with Ruman was a great experience. Very professional and skilled.',
    },
  ];

  Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Testimonials',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return Row(
                  children: testimonials
                      .map((t) => Expanded(
                            child: TestimonialCard(
                              name: t['name']!,
                              position: t['position']!,
                              text: t['text']!,
                            ),
                          ))
                      .toList(),
                );
              } else {
                return Column(
                  children: testimonials
                      .map((t) => TestimonialCard(
                            name: t['name']!,
                            position: t['position']!,
                            text: t['text']!,
                          ))
                      .toList(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
