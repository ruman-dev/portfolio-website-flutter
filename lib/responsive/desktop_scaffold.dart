import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation/data/portfolio_data.dart';
import '../presentation/desktop/helper/nav_bar_item.dart';
import '../presentation/desktop/widgets/about.dart';
import '../presentation/desktop/widgets/contact.dart';
import '../presentation/desktop/widgets/header.dart';
import '../presentation/desktop/widgets/projects.dart';
import '../presentation/desktop/widgets/skills.dart';
import '../presentation/desktop/widgets/testimonials.dart';
import '../presentation/methods/load_url.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DesktopScaffold> {
  final ScrollController _scrollController = ScrollController();

  // Create GlobalKeys for each section
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
  }

  void downloadFile() {
    // Download file
    loadUrl(downloadLink);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 3, 7, 18),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            floating: true,
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
            elevation: 2,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '<Dev R.>',
                  style: GoogleFonts.aldrich(
                      color: Colors.blue,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 6.w),
                ),
                Row(
                  children: [
                    NavbarItem(
                        title: 'About',
                        onTap: () => _scrollToSection(aboutKey)),
                    NavbarItem(
                        title: 'Skills',
                        onTap: () => _scrollToSection(skillsKey)),
                    NavbarItem(
                        title: 'Projects',
                        onTap: () => _scrollToSection(projectKey)),
                    NavbarItem(
                        title: 'Testimonials',
                        onTap: () => _scrollToSection(testimonialKey)),
                    NavbarItem(
                        title: 'Contact',
                        onTap: () => _scrollToSection(contactKey)),
                    SizedBox(width: 16.w),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 15.h,
                        ),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      onPressed: () {
                        downloadFile();
                      },
                      child: Text(
                        'Download CV',
                        style: GoogleFonts.openSans(
                            fontSize: 18.sp, color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Main content
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 70.h),
                Header(),
                SizedBox(height: 70.h),
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
    );
  }
}
