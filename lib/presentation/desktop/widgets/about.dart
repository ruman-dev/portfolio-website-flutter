import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/data/portfolio_data.dart';

class About extends StatelessWidget {
  const About({super.key, required this.aboutKey});

  final Key aboutKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutKey,
      color: Color.fromARGB(255, 17, 24, 39),
      padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 20.h),
      child: Row(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                'assets/images/ruman_pic_2.png',
                height: 300.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 80.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Me',
                  style: GoogleFonts.lexend(
                    fontSize: 30.sp,
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.w,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  aboutDescText,
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
