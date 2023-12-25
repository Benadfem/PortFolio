import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
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

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
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
                expandedHeight: 500.0,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: const AbelCustom(
                      text: 'Welcome to my Blog',
                      size: 30.0,
                      weight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  background: Image.asset(
                    'images/blog.jpg',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              )
            ];
          },
          body: ListView(
            children: const [
              BlogPost(),
              BlogPost(),
              BlogPost(),
              BlogPost(),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  var expand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 70.0, left: 70.0, top: 40.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.0,
            color: Colors.black,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: const AbelCustom(
                    text: 'Who is Dash?',
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 7.0,
                ),
              ],
            ),
            Text(
              'As soon as Shams Zakhour started working as a Dart writer at Google in December 2013, she started advocating for a Dart mascot. After documenting Java for 14 years, she had observed how beloved the Java mascot, Duke, had become, and she wanted something similar for Dart.But the idea didn’t gain momentum until 2017, when one of the Flutter engineers, Nina Chen, suggested it on an internal mailing list. The Flutter VP at the time, Joshy Joseph, approved the idea and asked the organizer for the 2018 Dart Conference, Linda Rasmussen, to make it happen. Once Shams heard about these plans, she rushed to Linda and asked to own and drive the project to produce the plushies for the conference. Linda had already elicited some design sketches, which she handed off. Starting with the sketches, Shams located a vendor who could work within an aggressive deadline (competing with Lunar New Year), and started the process of creating the specs for the plushy. That’s right, Dash was originally a Dart mascot, not a Flutter mascot. Here are some early mockups and one of the first prototypes:',
              style: GoogleFonts.openSans(
                fontSize: 15.0,
              ),
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
