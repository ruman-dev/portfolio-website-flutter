import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/portfolio_app.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(1440, 900),
      builder: (context, child) {
        return const PortfolioApp();
      },
    ),
  );
}
