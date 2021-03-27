import 'package:flutter/material.dart';
import '../widgets/intro_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 175),
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/hero-bg.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color(0xffcecece),
            BlendMode.difference,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Rushikesh Narwade",
            style: GoogleFonts.raleway(
              fontSize: 64,
              color: Color(0xFF45505b),
              fontWeight: FontWeight.w700,
            ),
          ),
          IntroText(),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('images/github-48.png'),
                  height: 24,
                ),
                SizedBox(width: 20),
                Image(
                  image: AssetImage('images/linkedin-48.png'),
                  height: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
