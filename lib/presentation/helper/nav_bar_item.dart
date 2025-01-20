import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const NavbarItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }
}
