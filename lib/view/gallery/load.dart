import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/bloc/event.dart';
import 'package:test_flutter/bloc/index.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PictureBloc pictureBloc = BlocProvider.of<PictureBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          child: Text('Load'),
          onPressed: () {
            pictureBloc.add(PictureLoadEvent());
          },
        ),
        SizedBox(width: 8.0),
        ElevatedButton(
          child: Text('Clear'),
          onPressed: () {
            pictureBloc.add(PictureClearEvent());
          },
        ),
      ],
    );
  }
}