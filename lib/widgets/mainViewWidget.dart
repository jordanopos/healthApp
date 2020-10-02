import 'package:flutter/material.dart';

class MainViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 15, right: 15, top : 10, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
              child: Container(
          child: Center(
            child: Text(''),
          ),
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.white,
          height: 100,
        ),
      ),
    );
  }
}
