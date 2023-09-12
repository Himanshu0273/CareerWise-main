import 'package:flutter/material.dart';
import 'package:hackheads/components/widgets.dart';
import 'data.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [LoginSphere()],
          ),
        ),
      ),
    );
  }
}
