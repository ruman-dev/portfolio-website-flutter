import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/presentation/helper/contact_info.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ContactInfo(
            icon: FontAwesomeIcons.envelope,
            text: 'ruman.cse49@gmail.com',
            onTap: () async {
              await Clipboard.setData(const ClipboardData(text: 'ruman.cse49@gmail.com'));
              showToast("Email Copied to Clipboard");
            },
          ),
          ContactInfo(
            icon: FontAwesomeIcons.phone,
            text: '+8801994385596',
            onTap: () async {
              await Clipboard.setData(const ClipboardData(text: '+8801994385596'));
              showToast("Phone Copied to Clipboard");
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
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
