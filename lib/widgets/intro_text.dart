import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class IntroText extends StatefulWidget {
  @override
  _IntroTextState createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  final List<String> _dataList = ["a Developer", "a Student", "a Thinker"];
  final String _fontFamily = GoogleFonts.poppins().fontFamily;
  int currentData = 0;
  int currentDataIndex = -1;
  bool isready = true;
  bool bvisible = false;
  String _data = "";
  bool halfcycle = false;
  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    timer = Timer.periodic(
      Duration(milliseconds: 100),
      (Timer t) async {
        if (isready) changeData();
      },
    );
    // changeData();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  changeData() async {
    isready = false;
    if (currentDataIndex == _dataList[currentData].length - 1) {
      halfcycle = true;
      setState(() {
        bvisible = true;
      });
      await Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          bvisible = false;
        });
      });
    }
    if (halfcycle) {
      if (currentDataIndex == 0) {
        halfcycle = false;
        currentData == 2 ? currentData = 0 : currentData++;
      } else {
        currentDataIndex--;
      }
    } else {
      currentDataIndex++;
    }
    setState(() {
      _data = _dataList[currentData].substring(0, currentDataIndex + 1);
      bvisible = false;
    });
    isready = true;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "I'm ",
          style: TextStyle(
            color: Color(0xFF45505b),
            fontSize: 20,
            fontFamily: _fontFamily,
          ),
        ),
        Text(
          _data,
          style: TextStyle(
            color: Color(0xFF0563bb),
            fontSize: 26,
            fontFamily: _fontFamily,
          ),
        ),
        Blinker(
          isvisible: bvisible,
        ),
      ],
    );
  }
}

class Blinker extends StatefulWidget {
  final bool isvisible;
  const Blinker({this.isvisible});

  @override
  _BlinkerState createState() => _BlinkerState();
}

class _BlinkerState extends State<Blinker> {
  String txt = '|';
  bool visible = true;
  Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 250), (timer) {
      if (visible) {
        visible = false;
        setState(() {
          txt = ' ';
        });
      } else {
        visible = true;
        setState(() {
          txt = '|';
        });
      }
    });
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isvisible
        ? Text(
            txt,
            style: GoogleFonts.poppins(
              color: Color(0xFF0563bb),
              fontSize: 26,
            ),
          )
        : Container();
  }
}
