import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/helper/nav_bar_item.dart';
import 'package:portfolio_website/presentation/widgets/about.dart';
import 'package:portfolio_website/presentation/widgets/contact.dart';
import 'package:portfolio_website/presentation/widgets/header.dart';
import 'package:portfolio_website/presentation/widgets/projects.dart';
import 'package:portfolio_website/presentation/widgets/skills.dart';
import 'package:portfolio_website/presentation/widgets/testimonials.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: const Text(
      //           'Ruman',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('About'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           // Add scroll to section functionality
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Skills'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Work'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Testimonials'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Contact'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: ElevatedButton(
      //           onPressed: () {},
      //           child: const Text('Download CV'),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: CustomScrollView(
        slivers: [
          // Modified Navbar
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            elevation: 2,
            title: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo text
                    const Text(
                      'Ruman',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Navigation items
                    if (constraints.maxWidth > 600)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          NavbarItem(title: 'About', onTap: () {}),
                          NavbarItem(title: 'Skills', onTap: () {}),
                          NavbarItem(title: 'Work', onTap: () {}),
                          NavbarItem(title: 'Testimonials', onTap: () {}),
                          NavbarItem(title: 'Contact', onTap: () {}),
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
                            onPressed: () {},
                            child: const Text(
                              'Download CV',
                              style: TextStyle(fontSize: 18),
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

          // Rest of the content remains the same
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  About(),
                  Skills(),
                  Projects(),
                  Testimonials(),
                  Contact(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
