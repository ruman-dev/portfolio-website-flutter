import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/helper/contact_info.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ContactInfo(
            icon: Icons.email,
            text: 'example@email.com',
            onTap: () => launchUrl(Uri.parse('mailto:example@email.com')),
          ),
          ContactInfo(
            icon: Icons.phone,
            text: '+1 234 567 890',
            onTap: () => launchUrl(Uri.parse('tel:+1234567890')),
          ),
        ],
      ),
    );
  }
}
