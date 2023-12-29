import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/workbase.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: ListView(
            children: const [
              Column(
                children: [
                  SizedBox(height: 20.0),
                  SansBold(
                    'Works',
                    35.0,
                  ),
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: 'images/portfolio.PNG',
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold('Portfolio', 20.0),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: SansRegular(
                        'Deployed on Android, IOS and web. The Portfolio Project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the Bark-end',
                        15.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

