import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/methods/load_url.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      color: const Color.fromARGB(255, 3, 7, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 150.r,
            backgroundImage: AssetImage('assets/images/ruman_picture.png'),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  loadUrl('https://www.linkedin.com/in/ruman-dev/');
                },
                child: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.grey[200],
                  size: 100.sp,
                ),
              ),
              SizedBox(width: 35.w),
              InkWell(
                onTap: () {
                  loadUrl('https://github.com/ruman-dev');
                },
                child: FaIcon(
                  FontAwesomeIcons.squareGithub,
                  color: Colors.grey[200],
                  size: 100.sp,
                ),
              ),
              SizedBox(width: 35.w),
              InkWell(
                onTap: () {
                  loadUrl('https://www.facebook.com/ruman.cse49');
                },
                child: FaIcon(
                  FontAwesomeIcons.squareFacebook,
                  color: Colors.grey[200],
                  size: 100.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
