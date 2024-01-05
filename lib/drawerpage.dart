import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class drawerpage extends StatefulWidget {
  const drawerpage({super.key});

  @override
  State<drawerpage> createState() => _drawerpageState();
}

class _drawerpageState extends State<drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.white.withOpacity(0.1),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green], // Adjust colors as needed
                      ),
                    ),
                    child: UserAccountsDrawerHeader(
                      accountName: const GlowText('NITIN KUMAR',style: TextStyle(color: Colors.black),),
                      accountEmail: const GlowText('its_a_demo.@gmail.com'),
                      currentAccountPicture: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.ice_skating_outlined),
                        label: const Text('pr'),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.green], // Adjust colors as needed
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: Text('Edit profile'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.history,
                    ),
                    title: Text('History'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.settings,
                    ),
                    title: Text('Setting'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.logout,
                    ),
                    title: Text('Logout'),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.feedback,
                    ),
                    title: Text('Feedback'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const SizedBox(),
                  ),
                  AboutListTile(
                    icon: Icon(
                      Icons.info,
                    ),
                    applicationIcon: Icon(
                      Icons.local_play,
                    ),
                    applicationName: 'project home',
                    applicationVersion: ' its always grow',
                    applicationLegalese: '© 2024 allenouse',
                    aboutBoxChildren: [
                      ///Content goes here...
                    ],
                    child: Text('About app'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
