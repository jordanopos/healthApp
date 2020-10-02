import 'package:flutter/material.dart';
import 'package:healthApp/pages/HomePage.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  TextEditingController controller = TextEditingController();

  sendInfoToFireBase() async {
    questionsRef.document().setData({
      "question" : controller.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(' Have any Questions?')),
        body: TextField(
          controller: controller,
        ));
  }
}
