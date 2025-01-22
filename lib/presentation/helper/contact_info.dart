import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onTap;

  const ContactInfo({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 35),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 26),
          ),
          IconButton(onPressed: onTap, icon: FaIcon(FontAwesomeIcons.clone)),
        ],
      ),
    );
  }
}
