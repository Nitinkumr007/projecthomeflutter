import 'package:flutter/material.dart';
import 'package:projecthomeflutter/ott/netflix.dart';
import 'package:projecthomeflutter/ott/prime.dart';
import 'package:projecthomeflutter/ott/youtube.dart';

class ottpage extends StatefulWidget {
  const ottpage({Key? key});

  @override
  State<ottpage> createState() => _ottpageState();
}

class _ottpageState extends State<ottpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.withOpacity(0.0), // Transparent at the top
                  Colors.blue.withOpacity(0.1), // Adjust the opacity for the glass effect
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabBar(
                  tabs: [
                    Text("Netflix"),
                    Text("Prime"),
                    Text("YouTube"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
        Center(child: TextButton( onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Netflix()));

      },
        child: Text('move to netflix'),)),
            Center(child: TextButton( onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Prime_video()));

            },
              child: Text('move to prime'),)),
            Center(child: TextButton( onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Youtube()));

            },
              child: Text('move to youtube'),)),
          ],
        ),
      ),
    );
  }
}
