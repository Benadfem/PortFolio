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

class SansBold extends StatelessWidget {
  final String title;
  final double size;
  const SansBold(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SansRegular extends StatelessWidget {
  final String title;
  final double size;
  const SansRegular(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextWithBorder extends StatelessWidget {
  // a customized widget that is used globally in the app for
  //showing text with border
  final String title;
  const TextWithBorder(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(7.0),
      child: SansRegular(title, 15.0),
    );
  }
}

class TextForm extends StatelessWidget {
  final String heading;
  final String hintText;
  final int maxLine;
  final double width;

  const TextForm(
    this.maxLine, {
    super.key,
    required this.heading,
    required this.hintText,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SansRegular(heading, 15),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: width,
              child: TextFormField(
                maxLines: maxLine,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(fontSize: 15),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  const AnimatedCardWeb(
      {super.key,
      required this.imagePath,
      required this.text,
      this.fit,
      this.reverse});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      seconds: 4,
    ),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? const Offset(0.0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : const Offset(0.08, 0.0),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Colors.tealAccent,
          ),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                widget.imagePath,
                height: 200,
                width: 200,
                fit: widget.fit == null ? null : BoxFit.contain,
              ),
              const SizedBox(
                height: 10.0,
              ),
              SansBold(widget.text, 15),
            ],
          ),
        ),
      ),
    );
  }
}
