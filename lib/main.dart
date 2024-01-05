import 'package:flutter/material.dart';
import 'package:projecthomeflutter/aipage.dart';
import 'package:projecthomeflutter/homepage.dart';
import 'package:projecthomeflutter/ottpage.dart';
import 'package:projecthomeflutter/socialpage.dart';
import 'package:flutter_glow/flutter_glow.dart';

import 'drawerpage.dart';

void main() {
  runApp(projecthome());
}

class projecthome extends StatefulWidget {
  const projecthome({Key? key}) : super(key: key);

  @override
  State<projecthome> createState() => _projecthomeState();
}

class _projecthomeState extends State<projecthome> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  //function to change the state of bottom appbar
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  //list for the page calling
  static const List<Widget> _pages = <Widget>[
    homepage(),
    ottpage(),
    socialpage(),
    aipage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _currentIndex == 1 || _currentIndex == 2
            ? null
            : AppBar(
                title: const GlowText(
                  'Be YouRselF',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.white54,
                  ),
                ),

                // actions: [
                //   IconButton(
                //     onPressed: () {
                //
                //     },
                //     icon: const Icon(
                //       Icons.account_circle_rounded,
                //       size: 35,
                //     ),
                //   ),
                // ],
                backgroundColor: Colors.transparent,
                elevation: 0,

                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black12.withOpacity(0.9),
                        Colors.blueGrey.withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
              ),
        endDrawer: drawerpage(),
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

//class for bottom navigation bar

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          4,
          (index) => InkWell(
            onTap: () => onTap(index),
            splashColor: Colors.transparent,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? Colors.lightGreen[300]
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ScaleTransition(
                scale: Tween<double>(begin: 1, end: 1.1).animate(
                  CurvedAnimation(
                    curve: Curves.bounceOut,
                    parent: ModalRoute.of(context)!.animation!,
                  ),
                ),
                child: Icon(
                  index == 0
                      ? Icons.home_filled
                      : (index == 1
                          ? Icons.play_circle_outline_sharp
                          : (index == 2
                              ? Icons.people_alt_rounded
                              : Icons.ac_unit)),
                  color: currentIndex == index ? Colors.black87 : Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
