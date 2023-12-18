import 'package:benson/mobile/contact_mobile.dart';
import 'package:benson/web/contact_web.dart';
import 'package:flutter/material.dart';

import 'mobile/landing_page_mobile.dart';
import 'web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return const LandingPageWeb();
                  } else {
                    return const LandingPageMobile();
                  }
                }),
            settings: settings);
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return const ContactWeb();
                  } else {
                    return const ContactMobile();
                  }
                }),
            settings: settings);
      // case'/about':
      //   return MaterialPageRoute(builder: (_)=> LayoutBuilder(builder: (context, constraints){if(constraints.maxWidth>800){
      //     return const
      //   },),);
      default:
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return const LandingPageWeb();
                  } else {
                    return const LandingPageMobile();
                  }
                }),
            settings: settings);
    }
  }
}
