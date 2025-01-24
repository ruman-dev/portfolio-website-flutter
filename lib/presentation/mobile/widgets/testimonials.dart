import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/data/portfolio_data.dart';
import 'package:portfolio_website/presentation/mobile/helper/testimonial_card.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key, required this.testimonialKey});

  final Key testimonialKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: testimonialKey,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Testimonials',
            style: GoogleFonts.lexend(
              fontSize: 50.sp,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2.w,
            ),
          ),
          SizedBox(height: 20.h),
          Column(
            children: testimonialData.map((data) {
              return Column(
                children: [
                  TestimonialCard(
                    name: data['name']!,
                    position: data['position']!,
                    text: data['text']!,
                  ),
                  SizedBox(
                      height: 20.h), // Add SizedBox after each TestimonialCard
                ],
              );
            }).toList(),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
