import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../methods/load_url.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;
  final List<String> components;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.components,
    required this.projectUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 31, 41, 55),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color.fromARGB(255, 55, 65, 81),
              ),
              child: Center(
                child: Image.asset(imageUrl, height: 300.h),
              ),
            ),
          ),
          Expanded(
            flex: 1,
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
                  SizedBox(height: 15.h),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16.sp, color: Colors.grey[100]),
                  ),
                  SizedBox(height: 25.h),
                  Wrap(
                    spacing: 8.w,
                    runSpacing: 8.h,
                    children: components.map((component) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 55, 65, 81),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          component,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[200],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 25.h),
                  InkWell(
                    onTap: () {
                      loadUrl(projectUrl);
                    },
                    child: Icon(
                      Icons.open_in_new,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
