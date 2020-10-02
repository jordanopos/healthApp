import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthApp/pages/MainPage.dart';
import 'ProfilePage.dart';
import 'Questions.dart';

var articlesRef = Firestore.instance.collection('articles');
var questionsRef = Firestore.instance.collection('questions');


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int pageIndex = 0;
  bool isSigned = true;

  getPageIndex(index) {
    setState(() {
      this.pageIndex = index;
    });
  }

  Widget buildHomeScreen() {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: getPageIndex,
        children: [MainPage(), NotificationsPage(), ProfilePage()],
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.grey[200],
        border: null,
        currentIndex: pageIndex,
        onTap: (index) => pageController.jumpToPage(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }

  Widget buildSignScreen() {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isSigned ? buildHomeScreen() : buildSignScreen();
  }
}
