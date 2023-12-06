import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isSelected = true;
      }),
      onExit: (_) => setState(() {
        _isSelected = false;
      }),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: _isSelected
            ? GoogleFonts.oswald(
                shadows: [
                  const Shadow(
                    color: Colors.black,
                    offset: Offset(0, -8),
                  ),
                ],
                color: Colors.transparent,
                fontSize: 25.0,
                decorationThickness: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.oswald(
                fontSize: 23.0,
                color: Colors.black,
              ),
        child: Text(widget.title),
      ),
    );
  }
}
