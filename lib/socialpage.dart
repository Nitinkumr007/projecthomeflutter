import 'package:flutter/material.dart';
import 'package:projecthomeflutter/socialmedia/facebook.dart';
import 'package:projecthomeflutter/socialmedia/instagram.dart';
import 'package:projecthomeflutter/socialmedia/twitter.dart';





class socialpage extends StatefulWidget {
  const socialpage({Key? key});

  @override
  State<socialpage> createState() => _socialpageState();
}

class _socialpageState extends State<socialpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabBar(
                  tabs: [
                    Text("Facebook"),
                    Text("Instagram"),
                    Text("Twitter"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: TextButton( onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Facebook()));

            },
              child: Text('move to facebook'),)),


            Center(child: TextButton( onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Instagram()));

            },
              child: Text('move to instagram'),)),
            Center(child: TextButton( onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Twitter()));

            },
              child: Text('move to twitter'),)),
          ],
        ),
      ),
    );
  }
}

