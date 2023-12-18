import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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

  @override
  Widget build(BuildContext context) {
    // var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

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

    return Scaffold(
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
      body: ListView(
        children: [
          //first phase
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 113,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/image-circle.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20.0),
                      child: const SansBold('Hello i\'m ', 15.0),
                    ),
                    const SansBold('Adedara Benson', 40.0),
                    const SansRegular('Flutter Developer', 20.0),
                  ],
                ),
                const SizedBox(height: 15.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 40.0,
                        ),
                      ],
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        SansRegular('adedoyin.adedara@gmail.com', 15.0),
                        SansRegular('+234 703 581 4461', 15.0),
                        SansRegular('No1 Area 1 Oluyole Ibadan Nigeria', 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 90.0),
          //second phase about  me
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
          const SizedBox(height: 60.0),
// third phase what i do
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SansBold('WHat i do ', 35.0),
              const AnimatedCard(
                imagePath: 'images/web.png',
                text: 'Web Development ',
                width: 300.0,
              ),
              const SizedBox(height: 35.0),
              const AnimatedCard(
                imagePath: 'images/app.png',
                text: 'App Developmemt ',
                fit: BoxFit.contain,
                reverse: true,
                width: 300.0,
              ),
              const SizedBox(height: 35.0),
              const AnimatedCard(
                imagePath: 'images/firebase.png',
                text: 'Back-end Development ',
                width: 300.0,
              ),
              const SizedBox(height: 60.0),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  const SansBold('Contact me', 35.0),
                  TextForm(
                    1,
                    text: 'First Name',
                    hintText: 'Enter the first name',
                    containerWidth: deviceWidth / 1.4,
                  ),
                  TextForm(
                    1,
                    text: 'Last Name',
                    hintText: 'Enter Last Name',
                    containerWidth: deviceWidth / 1.4,
                  ),
                  TextForm(
                    1,
                    text: 'Phone Number',
                    hintText: 'Enter Phone Number',
                    containerWidth: deviceWidth / 1.4,
                  ),
                  TextForm(
                    1,
                    text: 'Email',
                    hintText: 'Enter Email address',
                    containerWidth: deviceWidth / 1.4,
                  ),
                  TextForm(
                    10,
                    text: 'Message',
                    hintText: 'type your message',
                    containerWidth: deviceWidth / 1.4,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 20.0,
                    height: 60.0,
                    minWidth: deviceWidth / 2.2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.tealAccent,
                    child: const SansBold('Submit', 20.0),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 60.0),
        ],
      ),
    );
  }
}
