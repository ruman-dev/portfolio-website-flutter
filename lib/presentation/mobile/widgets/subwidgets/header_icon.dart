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
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: IconButton(
        onPressed: () {},
        hoverColor: Colors.grey,
        icon: FaIcon(
          icon,
          color: Colors.white,
          size: 35.sp,
        ),
      ),
    );
  }
}
