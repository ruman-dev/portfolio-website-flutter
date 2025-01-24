import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 45.r, color: Colors.grey[400]),
        SizedBox(width: 10.w),
        Text(
          text,
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
            fontSize: 30.sp,
            color: Colors.grey[100],
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          onPressed: onTap,
          mouseCursor: WidgetStateMouseCursor.clickable,
          hoverColor: Colors.transparent,
          icon: FaIcon(FontAwesomeIcons.clone),
          color: Colors.grey[300],
          iconSize: 35.r,
        ),
      ],
    );
  }
}
