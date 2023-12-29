import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
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
                  icon: SvgPicture.asset(
                    'images/instagram.svg',
                    fit: BoxFit.contain,
                    width: 25,
                    color: Colors.black,
                  ),
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/workbase.PNG',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                color: Colors.black,
                size: 25.0,
              ),
              title: const Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: 'Home', route: '/'),
                  Spacer(),
                  TabsWeb(title: 'Works', route: '/work'),
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
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 30.0),
                const SansBold(
                  'Works',
                  40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AnimatedCard(
                      imagePath: 'images/portfolio.PNG',
                      height: 200.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      width: deviceWidth / 3,
                      child: const Column(
                        children: [
                          SansBold('Portfolio', 30.0),
                          SizedBox(height: 15.0),
                          SansRegular(
                              'Deployed on Android, IOS and web. The Portfolio Project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the Bark-end ',
                              15.0),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
