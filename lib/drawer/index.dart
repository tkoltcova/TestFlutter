import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/generated/l10n.dart';

class DrawerMenu extends StatelessWidget {
  _profile() {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            child: Icon(
              Icons.person,
              size: 70,
            ),
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey[200],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Татьяна Кольцова', style: TextStyle(fontSize: 18)),
                    Text(
                      'tkoltcova@yandex.ru',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
                Icon(Icons.arrow_drop_down_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _profile(),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/'),
                child: Row(
                  children: [
                    Icon(Icons.folder_outlined),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        S.of(context).title_app_bar,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/about-me'),
                child: Row(
                  children: [
                    Icon(Icons.people),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        S.of(context).title_about_me,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
