import 'package:cloud_firestore/cloud_firestore.dart';

class Article {
  final String title;
  final String subtitle;
  final String details;
  final String imgae;

  Article({this.details, this.imgae, this.subtitle, this.title});

  factory Article.fromDocument(DocumentSnapshot doc) {
    return Article(
      details: doc['details'],
      imgae: doc['image'],
      subtitle: doc['subtitle'],
      title: doc['title']
    );
  }
}
