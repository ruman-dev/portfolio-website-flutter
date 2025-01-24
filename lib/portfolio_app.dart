import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive/desktop_scaffold.dart';
import 'package:portfolio_website/responsive/mobile_scaffold.dart';
import 'package:portfolio_website/responsive/responsive_layout.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruman\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
