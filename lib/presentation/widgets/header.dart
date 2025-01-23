import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/presentation/widgets/methods/load_url.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      color: Color.fromARGB(255, 3, 7, 18),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, I\'m ',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Funnel Display',
                          color: Colors.white,
                          letterSpacing: 5),
                    ),
                    Text(
                      'Ruman',
                      style: GoogleFonts.michroma(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5,
                          color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Flutter Developer',
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                      color: Colors.white,
                      wordSpacing: 8),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        loadUrl('https://www.linkedin.com/in/ruman-dev/');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.grey[200],
                        size: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        loadUrl('https://github.com/ruman-dev');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.squareGithub,
                        color: Colors.grey[200],
                        size: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        loadUrl('https://www.facebook.com/ruman.cse49');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.squareFacebook,
                        color: Colors.grey[200],
                        size: 40,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/images/ruman_picture.png'),
          ),
        ],
      ),
    );
  }
}
