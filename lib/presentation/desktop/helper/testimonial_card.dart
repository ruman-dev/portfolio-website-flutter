import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialCard extends StatelessWidget {
  final String name;
  final String position;
  final String text;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.position,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Card(
        color: Color.fromARGB(255, 31, 41, 55),
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundImage: const AssetImage('assets/images/avatar.jpg'),
              ),
              SizedBox(height: 16.h),
              Text(
                '"$text"',
                style: GoogleFonts.montserrat(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Text(
                name,
                style: GoogleFonts.aldrich(
                  fontSize: 26.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                position,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
