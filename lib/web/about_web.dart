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
    var deviceWidth = MediaQuery.of(context).size.width;
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
      body: ListView(
        children: [
          //about me first section
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
          ),

//web development second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: 'images/web.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: deviceWidth / 3,
                child: const Column(
                  children: [
                    SansBold('Wep Development', 30.0),
                    SizedBox(height: 15.0),
                    SansRegular(
                        'i\'m here to build your presence online with the state of Web Apps',
                        15.0),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
          //App Development section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: deviceWidth / 3,
                child: const Column(
                  children: [
                    SansBold('App Development', 30.0),
                    SizedBox(height: 15.0),
                    SansRegular(
                        'So you need a high performance, responsive and beautiful App? '
                        'DOn\'t worry we got you covered',
                        15.0),
                  ],
                ),
              ),
              const AnimatedCard(
                imagePath: 'images/app.png',
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          //Back-End Development section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: 'images/firebase.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: deviceWidth / 3,
                child: const Column(
                  children: [
                    SansBold('Back-End Development', 30.0),
                    SizedBox(height: 15.0),
                    SansRegular(
                        'Do you want your Back-End to be highly scalable and secure?'
                        'let\'s have a conversation on how I can help you with that.',
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
