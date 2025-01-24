import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../methods/load_url.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 20.h),
      color: Color.fromARGB(255, 3, 7, 18),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, I\'m ',
                      style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Funnel Display',
                          color: Colors.white,
                          letterSpacing: 5.w),
                    ),
                    Text(
                      'Ruman',
                      style: GoogleFonts.michroma(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5.w,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  'Flutter Developer',
                  style: GoogleFonts.montserrat(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10.w,
                      color: Colors.white,
                      wordSpacing: 8.w),
                ),
                SizedBox(height: 50.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        loadUrl('https://www.linkedin.com/in/ruman-dev/');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.grey[200],
                        size: 40.sp,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () {
                        loadUrl('https://github.com/ruman-dev');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.squareGithub,
                        color: Colors.grey[200],
                        size: 40.sp,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () {
                        loadUrl('https://www.facebook.com/ruman.cse49');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.squareFacebook,
                        color: Colors.grey[200],
                        size: 40.sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          CircleAvatar(
            radius: 180.r,
            backgroundImage: AssetImage('assets/images/ruman_picture.png'),
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
