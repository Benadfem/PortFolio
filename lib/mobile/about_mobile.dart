import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  tealContainer(String text) {
    //created a function with a name tealContainer()
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  Widget socialMedia(imageAsset, socialUrl) {
    //create a function to build a widget Socialmedia Button
    return IconButton(
      onPressed: () async => await launchUrl(Uri.parse(socialUrl)),
      icon: SvgPicture.asset(
        imageAsset,
        width: 35.0,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    Widget socialMedia(imageAsset, socialUrl) {
      //create a function to build a widget Social media Button
      return IconButton(
        onPressed: () async => await launchUrl(Uri.parse(socialUrl)),
        icon: SvgPicture.asset(
          imageAsset,
          width: 35.0,
          color: Colors.black,
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.black,
                      ),
                    ),
                    child: Image.asset('images/image-circle.png'),
                  ),
                ),
              ),
              const TabsMobile(text: 'Home', route: '/'),
              const SizedBox(height: 20.0),
              const TabsMobile(text: 'Works', route: '/works'),
              const SizedBox(height: 20.0),
              const TabsMobile(text: 'Blog', route: '/blog'),
              const SizedBox(height: 20.0),
              const TabsMobile(text: 'About', route: '/about'),
              const SizedBox(height: 20.0),
              const TabsMobile(text: 'Contact', route: '/contact'),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialMedia('images/instagram.svg',
                      'https://www.instagram.com/adedarabenson/'),
                  socialMedia('images/linkedin.svg',
                      'https://www.linkedin.com/in/adedoyin-adedara-212340142'),
                  socialMedia('images/github-icon.svg',
                      'https://github.com/Benadfem?tab=repositories'),
                  socialMedia('images/twitter.svg', 'https://twitter.com'),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 110.0,
                    child: Image.asset(
                      'images/image-circle.png',
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold('About me', 40.0),
                    const SansRegular(
                        'Hello! I \'m Adedara Benson, I Specialise in Flutter Development ',
                        15),
                    const SansRegular(
                        'I strive to ensure outstanding performance with state of ',
                        15),
                    const SansRegular(
                        'the art security for Android, Ios, Linux, Web and Windows ',
                        15),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer('Flutter'),
                        tealContainer(
                          'Firebase',
                        ),
                        tealContainer('Adroid'),
                        tealContainer(
                          'Windows',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),

              //web development phase
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: 'images/web.png',
                    width: 200.0,
                  ),
                  SizedBox(height: 20.0),
                  SansBold('Web Development ', 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              const SansRegular(
                  'i\'m  here to build your presence online with the state of  the  art web apps',
                  15.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    reverse: true,
                    imagePath: 'images/app.png',
                    width: 200.0,
                  ),
                  SizedBox(height: 20.0),
                  SansBold('App Development ', 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              const SansRegular(
                  'Do you need a high-performance, responsive and beautiful App?',
                  15.0),

              const SizedBox(height: 20.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: 'images/firebase.png',
                    width: 200.0,
                  ),
                  SizedBox(height: 20.0),
                  SansBold('Back-End Development ', 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              const SansRegular(
                  'Do you want your BackEnd to be highly scalable and secure?,'
                  ' lets have a conversation on how I can help you with that ',
                  15.0),

              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
