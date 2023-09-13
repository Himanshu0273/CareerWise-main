// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

/*
Changes : 
 - Bottom Bar UI
 */

import 'package:flutter/material.dart';
import 'package:hackheads/components/contants.dart';
import 'package:hackheads/components/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hackheads/pages/login.dart';
import 'package:hackheads/pages/profile.dart';
import 'package:hackheads/components/data.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

// List of all the pages

  final List<Widget> _screens = [
    Home_Page(),
    Placeholder(
      child: Center(child: Text('Coming Soon')),
    ),
    Placeholder(
      child: Center(child: Text('Coming Soon')),
    ),
    Placeholder(
      child: Center(child: Text('Coming Soon')),
    ),
    // Add more screens here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          color: Color(0xFFF28F3B),
          child: GNav(
            gap: 8,
            // Need to make changes here for better looking bottom bar
            backgroundColor: Color(0xFFF28F3B),
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xFFEBCDB4),
            tabBorderRadius: 10.0,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            padding: EdgeInsets.all(20.0),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.edit_note,
                text: 'Test',
              ),
              GButton(
                icon: Icons.account_circle,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.smart_toy,
                text: 'ChatBot',
              ),
              // GButton(icon: Icons.forum)
            ],
          ),
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 40.0, top: 60, right: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Himanshu !!',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.all(height * 0.0184),
                  decoration: BoxDecoration(
                      color: Color(0xFFFAD89F),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star),
                              Text(
                                'Great\nDecesion',
                                style: TextStyle(fontSize: 30.0),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
                              );
                            },
                            child: Material(
                              elevation:
                                  10.0, // Set the elevation value to give it a shadow.
                              shape: CircleBorder(), // Create a circular shape.
                              child: Container(
                                width:
                                    60.0, // Set the width of the circular container.
                                height:
                                    60.0, // Set the height of the circular container.
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(
                                        0xFFFAD89F) // Set the background color of the circular container.
                                    ),
                                child: Center(
                                  child: Text(
                                    'OK',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          'You are never to late to start thinking about your career.May you keep a objective mind and decide the career best for you')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                //Choose/Graph Part
                Wrap(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.38,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Choose',
                                style: textStyle2,
                              ),
                              Text(
                                'the best path with our guided',
                                style: textStyle1,
                              ),
                              Text(
                                'assistance for your Future career and make your strides in the right course of action',
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ),
                        ClipRect(
                          child: Image.asset(
                            'assets/Graph_asset.png',
                            width: width * 0.4,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Expanded(child: Image.asset('assets/bg2.png'))
          Container(
              width: double.infinity, child: Image.asset('assets/bg2.png'))
        ],
      ),
    );
  }
}
