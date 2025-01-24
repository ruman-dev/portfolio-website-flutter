import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/data/portfolio_data.dart';
import 'package:portfolio_website/presentation/mobile/helper/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key, required this.projectKey});

  final Key projectKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: projectKey,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      color: const Color.fromARGB(255, 17, 24, 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style: GoogleFonts.lexend(
              fontSize: 50.sp,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2.w,
            ),
          ),
          SizedBox(height: 20.h),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectData.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                title: projectData[index]['title'] as String,
                description: projectData[index]['description'] as String,
                components: (projectData[index]['components'] as List<String>),
                imageUrl: projectData[index]['imageUrl'] as String,
                projectUrl: projectData[index]['projectUrl'] as String,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String technologies, String imageUrl) {
    return Card(
      color: const Color.fromARGB(255, 31, 41, 55),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                color: Colors.grey[200],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              technologies,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[100],
              ),
            ),
            SizedBox(height: 10.h),
            Image.asset(imageUrl, height: 150.h),
          ],
        ),
      ),
    );
  }
}
