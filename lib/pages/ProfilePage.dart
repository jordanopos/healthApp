import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top :8.0),
              child: Text(
                'Ojangole Jordan',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top : 3),
              child: Text(
                'myemail@gmail.com',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )

          ],
        ),
      ),
    ));
  }
}
