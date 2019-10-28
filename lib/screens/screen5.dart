import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  Library({Key key}) : super(key: key);

  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Download'),
            ),
            ListTile(
              leading: Icon(Icons.video_library),
              title: Text('My videos'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Purchases'),
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: Text('Watch later'),
            ),
          ],
        ),
      ),
    );
  }
}