import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:healthApp/models/article.dart';
import './HomePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    Future<DocumentSnapshot> allAtricles = articlesRef.document().get();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.grey[600],
              title: Text(
                'Health Information',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              width: deviceSize.width,
              child: FutureBuilder(
                future: allAtricles,
                builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 320),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                Article nArticle = Article.fromDocument(snapshot.data);

                return ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                    ),
                    subtitle: Text(nArticle.subtitle),
                    title: Text(
                      nArticle.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
