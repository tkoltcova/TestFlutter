import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/generated/l10n.dart';

class DrawerMenu extends StatelessWidget {
  _profile() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 50),
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

  _item(String title, Icon icon, void func()) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        onTap: () => func(),
        leading: icon,
        title: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
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
            _item(
              S.of(context).title_app_bar,
              Icon(Icons.folder_outlined),
              () => Navigator.pushNamed(context, '/'),
            ),
            _item(
              S.of(context).title_about_me,
              Icon(Icons.people),
              () => Navigator.pushNamed(context, '/about-me'),
            )
          ],
        ),
      ),
    );
  }
}
