import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

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
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'Ruman',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                // Add scroll to section functionality
              },
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Work'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Testimonials'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Download CV'),
              ),
            ),
          ],
        ),
      ),
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
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Download CV'),
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
                  HeaderSection(),
                  AboutSection(),
                  SkillsSection(),
                  ProjectsSection(),
                  TestimonialsSection(),
                  ContactSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Header Section
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi, I\'m Ruman',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'A passionate Flutter developer creating beautiful and functional applications',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('Profile Image'),
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                const Text(
                  'Hi, I\'m Ruman',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'A passionate Flutter developer creating beautiful and functional applications',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('Profile Image'),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

// About Section
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('About Image'),
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'I am a skilled Flutter developer with experience in creating cross-platform applications. '
                        'My passion lies in building beautiful, functional, and user-friendly applications that solve real-world problems.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('About Image'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'I am a skilled Flutter developer with experience in creating cross-platform applications. '
                  'My passion lies in building beautiful, functional, and user-friendly applications that solve real-world problems.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

// Skills Section
class SkillsSection extends StatelessWidget {
  final List<String> skills = [
    'Flutter',
    'Dart',
    'Firebase',
    'Git',
    'REST API',
    'SQL',
    'HTML',
    'CSS',
    'JavaScript',
  ];

  SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: skills.map((skill) => SkillCard(skill: skill)).toList(),
          ),
        ],
      ),
    );
  }
}

// Project Section
class ProjectsSection extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Project 1',
      'description': 'A Flutter mobile app for task management',
      'imageUrl': 'placeholder',
    },
    {
      'title': 'Project 2',
      'description': 'E-commerce website with Flutter Web',
      'imageUrl': 'placeholder',
    },
  ];

  ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                title: projects[index]['title']!,
                description: projects[index]['description']!,
                imageUrl: projects[index]['imageUrl']!,
              );
            },
          ),
        ],
      ),
    );
  }
}

// Testimonials Section
class TestimonialsSection extends StatelessWidget {
  final List<Map<String, String>> testimonials = [
    {
      'name': 'John Doe',
      'position': 'CEO, Tech Corp',
      'text': 'Ruman is an exceptional developer who delivers high-quality work.',
    },
    {
      'name': 'Jane Smith',
      'position': 'Project Manager',
      'text': 'Working with Ruman was a great experience. Very professional and skilled.',
    },
  ];

  TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Testimonials',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return Row(
                  children: testimonials
                      .map((t) => Expanded(
                            child: TestimonialCard(
                              name: t['name']!,
                              position: t['position']!,
                              text: t['text']!,
                            ),
                          ))
                      .toList(),
                );
              } else {
                return Column(
                  children: testimonials
                      .map((t) => TestimonialCard(
                            name: t['name']!,
                            position: t['position']!,
                            text: t['text']!,
                          ))
                      .toList(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

// Contact Section
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
            icon: Icons.email,
            text: 'example@email.com',
            onTap: () => launchUrl(Uri.parse('mailto:example@email.com')),
          ),
          ContactInfo(
            icon: Icons.phone,
            text: '+1 234 567 890',
            onTap: () => launchUrl(Uri.parse('tel:+1234567890')),
          ),
        ],
      ),
    );
  }
}

// Helper Widgets
class NavbarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavbarItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;

  const SkillCard({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(skill),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                Container(
                  width: 200,
                  height: 150,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('Project Image'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(description),
                        const SizedBox(height: 8),
                        const Icon(Icons.open_in_new),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('Project Image'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(description),
                      const SizedBox(height: 8),
                      const Icon(Icons.open_in_new),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String position;
  final String text;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.position,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              position,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const ContactInfo({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
