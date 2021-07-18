import 'package:flutter/material.dart';
import 'package:test_flutter/drawer/index.dart';

class AboutMePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerMenu(),
      body: Container(),
    );
  }
}