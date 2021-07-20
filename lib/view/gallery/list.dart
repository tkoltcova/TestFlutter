import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/bloc/index.dart';
import 'package:test_flutter/bloc/state.dart';
import 'package:test_flutter/generated/l10n.dart';
import 'package:test_flutter/view/gallery/info.dart';
import 'package:test_flutter/models/index.dart';

class PictureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PictureBloc, PictureState>(
      builder: (context, state) {
        if (state is PictureEmptyState) {
          return Center(
            child: Text(
              S.of(context).picture_empty_state,
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }

        if (state is PictureLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PictureLoadedState) {
          _title(String title) {
            return Container(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '$title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }

          Widget _list(int start, int end) {
            return Container(
                width: double.infinity,
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: List.generate(
                  6,
                  (index) => GridDecoration(
                      layout: state.loadedPicture.sublist(start, end)[index]),
                ),
              ),
            );
          }

          return Container(
            color: Colors.grey[300],
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: <Widget>[
                Column(
                  children: [_title(S.of(context).category_1), _list(0, 6)],
                ),
                Column(
                  children: [_title(S.of(context).category_2), _list(6, 12)],
                ),
                Column(
                  children: [_title(S.of(context).category_3), _list(12, 18)],
                ),
                Column(
                  children: [_title(S.of(context).category_4), _list(18, 24)],
                ),
              ],
            ),
          );
        }

        if (state is PictureErrorState) {
          return Center(
            child: Text(
              S.of(context).picture_error_state,
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }
        return Container();
      },
    );
  }
}

class GridDecoration extends StatelessWidget {
  final Pictures layout;

  GridDecoration({required this.layout});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InfoPage(
            layout.albumId,
            layout.id,
            layout.title,
            layout.url,
            layout.thumbnailUrl,
          ),
        ),
      ),
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(layout.url),
            ],
          ),
        ),
      ),
    );
  }
}
