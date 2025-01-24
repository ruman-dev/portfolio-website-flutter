import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/mobile/helper/contact_info.dart';

class Contact extends StatelessWidget {
  const Contact({super.key, required this.contactKey});

  final Key contactKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactKey,
      padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 40.h),
      color: Color.fromARGB(255, 17, 24, 39),
      child: Column(
        children: [
          Text(
            'Get in Touch',
            style: GoogleFonts.lexend(
              fontSize: 30.sp,
              color: Colors.grey[300],
              fontWeight: FontWeight.bold,
              letterSpacing: 2.w,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Need to talk to me? Feel free to discus with me',
            style: GoogleFonts.montserrat(
                fontSize: 16.sp, color: Colors.grey[200]),
          ),
          // SizedBox(height: 50.h),
          ContactInfo(
            icon: FontAwesomeIcons.envelope,
            text: 'ruman.cse49@gmail.com',
            onTap: () async {
              await Clipboard.setData(
                  const ClipboardData(text: 'ruman.cse49@gmail.com'));
              showToast("Email Copied to Clipboard");
            },
          ),
          ContactInfo(
            icon: FontAwesomeIcons.phone,
            text: '+8801994385596',
            onTap: () async {
              await Clipboard.setData(
                  const ClipboardData(text: '+8801994385596'));
              showToast("Phone Copied to Clipboard");
            },
          ),
          ContactInfo(
            icon: Icons.location_on_outlined,
            text: 'Dhaka, Bangladesh',
            onTap: () async {
              await Clipboard.setData(
                  const ClipboardData(text: 'Dhaka, Bangladesh'));
              showToast("Location Copied to Clipboard");
            },
          ),
        ],
      ),
    );
  }
}

void showToast(String title) {
  Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_RIGHT,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      webBgColor: "linear-gradient(to right, #1488cc, #2b32b2)",
      fontSize: 18.sp);
}
