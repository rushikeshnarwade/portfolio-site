import 'package:first_web_app/tabs/home_tab.dart';
import 'package:first_web_app/widgets/tabs_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rushikesh Narwade",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (num) {
              setState(() {
                _currentPage = num;
              });
            },
            children: [
              HomeTab(),
              HomeTab(),
              HomeTab(),
              HomeTab(),
            ],
          ),
          TabsController(
            currentTab: _currentPage,
            onTabPress: (num) {
              _pageController.animateTo(num,
                  duration: Duration(seconds: 1), curve: Curves.bounceIn);
            },
          ),
        ],
      ),
    );
  }
}
