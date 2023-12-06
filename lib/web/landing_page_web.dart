import 'package:flutter/material.dart';

import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: const Drawer(),
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
            TabsWeb('Home'),
            Spacer(),
            TabsWeb('Works'),
            Spacer(),
            TabsWeb('Blog'),
            Spacer(),
            TabsWeb('About'),
            Spacer(),
            TabsWeb('Contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          color: Colors.tealAccent),
                      child: const SansBold('Hello I\'m', 15),
                    ),
                    const SizedBox(height: 15.0),
                    const SansBold('Adedara Benson', 55.0),
                    const SansRegular('Flutter Developer', 30),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        SansRegular('adedoyin.adedara@gmail.com', 15)
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 20,
                        ),
                        SansRegular('+234 703 581 4461', 15),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(
                          width: 20,
                        ),
                        SansRegular('No 2 Ibadan Nigetia', 15),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 143,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/image-circle.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
