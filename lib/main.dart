import 'package:benson/mobile/landing_page_mobile.dart';
import 'package:benson/web/landing_page_web.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return const LandingPageWeb();
        } else {
          return const LandingPageMobile();
        }
      }),
    );
  }
}
