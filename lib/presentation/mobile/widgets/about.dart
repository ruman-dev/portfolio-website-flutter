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
      padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 20.h),
      color: const Color.fromARGB(255, 17, 24, 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About Me',
            style: GoogleFonts.lexend(
              fontSize: 50.sp,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2.w,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    'assets/images/ruman_pic_2.png',
                    height: 150.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 20.h),
              Expanded(
                child: Text(
                  aboutDescText,
                  style: GoogleFonts.montserrat(
                    fontSize: 22.sp,
                    color: Colors.grey[100],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
