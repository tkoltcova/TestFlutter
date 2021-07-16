import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget{

  _profile(){
    return Container(
      color: Colors.purple[100],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _profile(),
            Divider(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}