import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 60,
        left: 100,
      ),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                "ABOUT",
                style: GoogleFonts.raleway(
                    fontSize: 32,
                    color: Color(0xFF45505b),
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 20,
                width: 120,
                padding: EdgeInsets.symmetric(horizontal: 40),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFdddddd),
                    ),
                  ),
                ),
                child: Container(
                  height: 20,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF0563bb),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Learn more about me",
                  style: GoogleFonts.openSans(
                    color: Color(0xFF272829),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  "images/rushikesh_narwade.jpg",
                  width: 340,
                ),
              ),
              Container(
                width: 760,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      width: double.infinity,
                      child: Text(
                        "Personal Details & Interests",
                        style: GoogleFonts.raleway(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF728394),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: Text(
                        "I'm a final year Computer Engineering Student studying in Sinhgad College of Engineering, Pune." +
                            " I have previously interned working on apps that use Core Java, Flutter, Firebase among other technologies." +
                            "I'm also interested in Machine Learning, Mobile App and Web Development." +
                            "I am currently learning Django to become a budding Backend Developer and jump into the line of Backend Development.",
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 7,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/right_arrow.png",
                                  width: 18,
                                  color: Color(0xFF0563bb),
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: 'Telegram Id:',
                                      style: GoogleFonts.openSans(
                                          color: Color(0xFF272829),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ' @rushikeshnarwade',
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF272829),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  "images/right_arrow.png",
                                  width: 18,
                                  color: Color(0xFF0563bb),
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: 'Degree:',
                                      style: GoogleFonts.openSans(
                                          color: Color(0xFF272829),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ' Bachelor',
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF272829),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/right_arrow.png",
                                  width: 18,
                                  color: Color(0xFF0563bb),
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: 'City:',
                                      style: GoogleFonts.openSans(
                                          color: Color(0xFF272829),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ' Pune, Maharashtra',
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF272829),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  "images/right_arrow.png",
                                  width: 18,
                                  color: Color(0xFF0563bb),
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: 'Email:',
                                      style: GoogleFonts.openSans(
                                          color: Color(0xFF272829),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ' rushikeshnarwade53@gmail.com',
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF272829),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
