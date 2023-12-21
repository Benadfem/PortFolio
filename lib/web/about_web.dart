import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70.0,
                backgroundImage: AssetImage('images/benson.png'),
              ),
            ),
            const SizedBox(height: 15.0),
            const SansBold('Adedara Benson', 30.0),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://www.instagram.com/adedarabenson/'));
                  },
                  icon: SvgPicture.asset('images/instagram.svg',
                      fit: BoxFit.contain, width: 25, color: Colors.black),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse(
                        'https://github.com/Benadfem?tab=repositories'));
                  },
                  icon: SvgPicture.asset(
                    'images/github-icon.svg',
                    fit: BoxFit.contain,
                    width: 25,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse(
                        'https://www.linkedin.com/in/adedoyin-adedara-212340142'));
                  },
                  icon: SvgPicture.asset('images/linkedin.svg',
                      fit: BoxFit.contain, width: 25, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(title: 'Home', route: '/'),
            Spacer(),
            TabsWeb(title: 'Works', route: '/works'),
            Spacer(),
            TabsWeb(title: 'Blog', route: '/blog'),
            Spacer(),
            TabsWeb(title: 'About', route: '/about'),
            Spacer(),
            TabsWeb(title: 'Contact', route: '/contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 500.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold('About me', 40),
                  SizedBox(height: 15.0),
                  SansRegular(
                      'Hello! I \'m Adedara Benson, I Specialise in Flutter Development ',
                      15),
                  SansRegular(
                      'I strive to ensure outstanding perfomace with state of ',
                      15),
                  SansRegular(
                      'the art security for Android, Ios, Linux, Web and Windows ',
                      15),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      // create a general class to hold the properties of the skills
                      //using TextWithBorder
                      TextWithBorder('Flutter'),
                      SizedBox(width: 7.0),
                      TextWithBorder('Firebase'),
                      SizedBox(width: 7.0),
                      TextWithBorder('Ios'),
                      SizedBox(width: 7.0),
                      TextWithBorder('Android'),
                      SizedBox(width: 7.0),
                    ],
                  )
                ],
              ),
              CircleAvatar(
                radius: 147,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 143,
                  child: CircleAvatar(
                    radius: 140,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/image-circle.png',
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
