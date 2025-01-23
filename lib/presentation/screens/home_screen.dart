import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/helper/nav_bar_item.dart';
import 'package:portfolio_website/presentation/widgets/about.dart';
import 'package:portfolio_website/presentation/widgets/contact.dart';
import 'package:portfolio_website/presentation/widgets/header.dart';
import 'package:portfolio_website/presentation/widgets/methods/load_url.dart';
import 'package:portfolio_website/presentation/widgets/projects.dart';
import 'package:portfolio_website/presentation/widgets/skills.dart';
import 'package:portfolio_website/presentation/widgets/testimonials.dart';

import '../data/portfolio_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            title: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '<Dev R.>',
                      style: GoogleFonts.aldrich(
                          color: Colors.blue,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 6),
                    ),
                    // Navigation items
                    if (constraints.maxWidth > 600)
                      Row(
                        mainAxisSize: MainAxisSize.min,
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
                          const SizedBox(width: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              downloadFile();
                            },
                            child: Text(
                              'Download CV',
                              style: GoogleFonts.openSans(
                                  fontSize: 18, color: Colors.grey[300]),
                            ),
                          ),
                        ],
                      )
                    else
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.blue),
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                      ),
                  ],
                );
              },
            ),
          ),

          // Main content
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 70),
                Header(),
                const SizedBox(height: 70),
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
