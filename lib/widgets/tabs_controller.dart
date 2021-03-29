import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsController extends StatelessWidget {
  final int currentTab;
  final Function(double) onTabPress;
  const TabsController({this.currentTab, this.onTabPress});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        OneTabView(
          image: "images/home60.png",
          name: "Home",
          onTabPress: () {
            onTabPress(0);
          },
          isCurrent: currentTab == 0,
        ),
        OneTabView(
          image: 'images/user60.png',
          name: 'About',
          onTabPress: () {
            onTabPress(1);
          },
          isCurrent: currentTab == 1,
        ),
        OneTabView(
          image: 'images/file-blank60.png',
          name: 'Resume',
          onTabPress: () {
            onTabPress(2);
          },
          isCurrent: currentTab == 2,
        ),
        OneTabView(
          image: 'images/envelope60.png',
          name: 'Contact',
          onTabPress: () {
            onTabPress(3);
          },
          isCurrent: currentTab == 3,
        ),
      ],
    );
  }
}

class OneTabView extends StatefulWidget {
  final bool isCurrent;
  final String name;
  final String image;
  final Function onTabPress;
  OneTabView({this.image, this.onTabPress, this.name, this.isCurrent});
  @override
  _OneTabViewState createState() => _OneTabViewState();
}

class _OneTabViewState extends State<OneTabView> {
  bool mouseOn = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTabPress,
      child: MouseRegion(
        onHover: (hover) {
          setState(() {
            mouseOn = true;
          });
        },
        onExit: (hover) {
          setState(() {
            mouseOn = false;
          });
        },
        child: Container(
          height: 56,
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: (widget.isCurrent || mouseOn)
                ? Color(0xFF0563bb)
                : Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage(widget.image),
                height: 20,
                color:
                    (widget.isCurrent || mouseOn) ? Colors.white : Colors.black,
              ),
              if (mouseOn)
                Text(
                  widget.name,
                  style: GoogleFonts.openSans(
                    color: (widget.isCurrent || mouseOn)
                        ? Colors.white
                        : Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
