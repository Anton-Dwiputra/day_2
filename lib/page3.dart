import 'package:flutter/material.dart';

class PageKetiga extends StatefulWidget {
  String username, password;
  PageKetiga({this.username, this.password});


  @override
  _PageKetigaState createState() => _PageKetigaState();
}

class _PageKetigaState extends State<PageKetiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Ketiga'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Text('Username anda ; ${widget.username}'),
          Text('Password anda ; ${widget.password}'),
        ],
      ),
    );
  }
}
