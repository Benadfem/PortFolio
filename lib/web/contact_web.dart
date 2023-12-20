import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                  'images/contact.jpg',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              const SansBold('Contact me', 40.0),
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(1,
                          text: 'First Name',
                          hintText: 'Please enter your first name',
                          containerWidth: 350),
                      TextForm(1,
                          text: 'Email',
                          hintText: 'Please enter your Email Address',
                          containerWidth: 350),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(1,
                          text: 'Last Name',
                          hintText: 'Please enter your Last name',
                          containerWidth: 350),
                      TextForm(1,
                          text: 'Phone Number',
                          hintText: 'Please enter your phone Number',
                          containerWidth: 350),
                    ],
                  ),
                ],
              ),
              TextForm(10,
                  text: 'Message',
                  hintText: 'Please provide your message ',
                  containerWidth: deviceWidth / 1.5),
              const SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                height: 60.0,
                minWidth: 200.0,
                elevation: 20.0,
                color: Colors.tealAccent,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const SansBold('Submit', 20.0),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
