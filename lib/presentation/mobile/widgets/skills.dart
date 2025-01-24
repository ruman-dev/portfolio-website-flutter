import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/data/portfolio_data.dart';
import 'package:portfolio_website/presentation/mobile/helper/skill_card.dart';

class Skills extends StatelessWidget {
  const Skills({super.key, required this.skillsKey});

  final Key skillsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: skillsKey,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Skills',
            style: GoogleFonts.lexend(
              fontSize: 50.sp,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2.w,
            ),
          ),
          SizedBox(height: 20.h),
          Wrap(
            spacing: 20.w,
            runSpacing: 20.h,
            alignment: WrapAlignment.center,
            children:
                skillsData.map((skill) => SkillCard(skill: skill)).toList(),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
