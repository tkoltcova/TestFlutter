import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/bloc/event.dart';
import 'package:test_flutter/bloc/index.dart';
import 'package:test_flutter/drawer/index.dart';
import 'package:test_flutter/generated/l10n.dart';
import 'package:test_flutter/service/index.dart';
import 'list.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}
class _GalleryPageState extends State<GalleryPage>{
  final pictures = PicturesRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PictureBloc>(
      create: (context) => PictureBloc(picturesRepository: pictures)..add(PictureLoadEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).title_app_bar),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Expanded(child: PictureList())
          ],
        ),
        drawer: DrawerMenu(),
      ),
    );
  }
}
