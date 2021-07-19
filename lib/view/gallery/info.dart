import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/drawer/index.dart';
import 'package:test_flutter/generated/l10n.dart';

class InfoPage extends StatelessWidget {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  InfoPage(
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  );

  _infoPhotos(String title, String value) {
    return RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: '$title: ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: value,
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(S.of(context).title_app_bar),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Card(
          margin: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(thumbnailUrl),
                _infoPhotos('albumId', albumId.toString()),
                _infoPhotos(S.of(context).title_id, id.toString()),
                _infoPhotos(S.of(context).title_head, title),
                _infoPhotos(S.of(context).title_url, url),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(S.of(context).title_pop)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: DrawerMenu(),
    );
  }
}
