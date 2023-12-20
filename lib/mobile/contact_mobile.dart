import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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

    return Scaffold(
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
                  'images/contact.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25.0,
            ),
            child: Wrap(
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
          ),
        ),
      ),
    );
  }
}
