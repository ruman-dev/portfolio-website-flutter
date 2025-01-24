import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      child: Text(
        title,
        style: GoogleFonts.openSans(fontSize: 22.sp, color: Colors.grey[300]),
      ),
    );
  }
}
