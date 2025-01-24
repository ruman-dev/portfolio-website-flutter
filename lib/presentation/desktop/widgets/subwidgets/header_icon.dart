import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(12),
        shape: BoxShape.rectangle,
      ),
      child: IconButton(
        onPressed: () {},
        hoverColor: Colors.grey,
        icon: FaIcon(
          icon,
          color: Colors.white,
          size: 35.r,
        ),
      ),
    );
  }
}
