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
    var widthDevice = MediaQuery.of(context).size.width;
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
          SizedBox(
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
                        SansRegular('No 2 Area 1 Ibadan Nigeria', 15),
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
          // second phase of the page
          SizedBox(
            height: heightDevice / 1.5,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/image-web.png',
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold('About me', 40),
                      SizedBox(
                        height: 15.0,
                      ),
                      SansRegular(
                          'Hello! I \'m Adedara Benson, I Specialise in Flutter Development ',
                          15),
                      SansRegular(
                          'I strive to ensure outstanding perfomace with state of ',
                          15),
                      SansRegular(
                          'the art security for Android, Ios, Linux, Web and Windows ',
                          15),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          // create a general class to hold the properties of the skills
                          //using TextWithBorder
                          TextWithBorder('Flutter'),
                          SizedBox(width: 7.0),
                          TextWithBorder('Firebase'),
                          SizedBox(
                            width: 7.0,
                          ),
                          TextWithBorder('Ios'),
                          SizedBox(
                            width: 7.0,
                          ),
                          TextWithBorder('Android'),
                          SizedBox(
                            width: 7.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // third Phase of the page
          SizedBox(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SansBold('What i do', 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/web.png',
                              height: 200,
                              width: 200,
                              // fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const SansBold('Web Developmemt ', 15),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30.0,
                      shadowColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/app.png',
                              height: 200,
                              width: 200,
                              // fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const SansBold('App Developmemt ', 15),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30.0,
                      shadowColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/firebase.png',
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const SansBold('Back-end Development ', 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Fourth phase of the page
          SizedBox(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SansBold('About me', 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const TextForm(1,
                            heading: 'First Name',
                            hintText: 'Please enter your first name',
                            width: 350),
                        const TextForm(1,
                            heading: 'Email',
                            hintText: 'Please enter your Email Address',
                            width: 350),
                      ],
                    ),
                    Column(
                      children: [
                        const TextForm(1,
                            heading: 'Last Name',
                            hintText: 'Please enter your Last name',
                            width: 350),
                        const TextForm(1,
                            heading: 'Phone Number',
                            hintText: 'Please enter your phone Number',
                            width: 350),
                      ],
                    ),
                  ],
                ),
                TextForm(10,
                    heading: 'Message',
                    hintText: 'Please provide your message ',
                    width: widthDevice / 1.5),
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
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
