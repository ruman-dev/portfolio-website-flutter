import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/mobile/widgets/about.dart';
import 'package:portfolio_website/presentation/mobile/widgets/contact.dart';
import 'package:portfolio_website/presentation/mobile/widgets/header.dart';
import 'package:portfolio_website/presentation/mobile/widgets/projects.dart';
import 'package:portfolio_website/presentation/mobile/widgets/skills.dart';
import 'package:portfolio_website/presentation/mobile/widgets/testimonials.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectKey = GlobalKey();
  final GlobalKey testimonialKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext!;
    final position = context.findRenderObject() as RenderBox;
    final offset = position.localToGlobal(Offset.zero).dy +
        _scrollController.offset -
        kToolbarHeight;

    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 3, 7, 18),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            elevation: 0,
            title: Text(
              '<Dev R.>',
              style: GoogleFonts.aldrich(
                color: Colors.blue,
                fontSize: 50.sp,
                fontWeight: FontWeight.w700,
                letterSpacing: 6.w,
              ),
            ),
            actions: [
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu, color: Colors.blue),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Header(),
                About(aboutKey: aboutKey),
                Skills(skillsKey: skillsKey),
                Projects(projectKey: projectKey),
                Testimonials(testimonialKey: testimonialKey),
                Contact(contactKey: contactKey),
              ],
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 3, 7, 18),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 55, 65, 81),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '<Dev R.>',
                    style: GoogleFonts.aldrich(
                        color: Colors.white,
                        fontSize: 96.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 6.w),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[200],
              ),
              title: Text(
                'Home',
                style: GoogleFonts.openSans(
                    fontSize: 40.sp, color: Colors.grey[200]),
              ),
              onTap: () => _scrollToSection(aboutKey),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.grey[200],
              ),
              title: Text(
                'About',
                style: GoogleFonts.openSans(
                    fontSize: 40.sp, color: Colors.grey[200]),
              ),
              onTap: () => _scrollToSection(aboutKey),
            ),
            ListTile(
              leading: Icon(
                Icons.build,
                color: Colors.grey[200],
              ),
              title: Text(
                'Skills',
                style: GoogleFonts.openSans(
                    fontSize: 40.sp, color: Colors.grey[200]),
              ),
              onTap: () => _scrollToSection(skillsKey),
            ),
            ListTile(
              leading: Icon(
                Icons.work_rounded,
                color: Colors.grey[200],
              ),
              title: Text(
                'Projects',
                style: GoogleFonts.openSans(
                    fontSize: 40.sp, color: Colors.grey[200]),
              ),
              onTap: () => _scrollToSection(projectKey),
            ),
            ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.grey[200],
              ),
              title: Text(
                'Testimonials',
                style: GoogleFonts.openSans(
                    fontSize: 40.sp, color: Colors.grey[200]),
              ),
              onTap: () => _scrollToSection(testimonialKey),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.grey[200],
              ),
              title: Text(
                'Contact',
                style: GoogleFonts.openSans(
                    fontSize: 40.sp, color: Colors.grey[200]),
              ),
              onTap: () => _scrollToSection(contactKey),
            ),
          ],
        ),
      ),
    );
  }
}
