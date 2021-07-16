import 'package:flutter/material.dart';
import 'package:test_flutter/drawer/index.dart';
import 'package:test_flutter/generated/l10n.dart';

class GalleryPage extends StatefulWidget{
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title_app_bar),
      ),
      body: Container(
        child: Text('123'),
      ),
      drawer: DrawerMenu(),
    );
  }
}