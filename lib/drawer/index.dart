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
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://sun9-66.userapi.com/impf/c631923/v631923940/2daf7/j007a20dla8.jpg?size=1438x2160&quality=96&sign=ab40027ca22542413f2891bc0423e1c0&type=album"),
            radius: 50,
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
