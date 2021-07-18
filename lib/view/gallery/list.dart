import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/bloc/index.dart';
import 'package:test_flutter/bloc/state.dart';
import 'package:test_flutter/info/index.dart';
import 'package:test_flutter/models/index.dart';

class PictureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PictureBloc, PictureState>(
      builder: (context, state) {
        if (state is PictureEmptyState) {
          return Center(
            child: Text(
              'No data received. Press button "Load"',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }

        if (state is PictureLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PictureLoadedState) {
          return GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(10.0),
            children: List.generate(
              state.loadedPicture.length,
              (index) => GridDecoration(layout: state.loadedPicture[index]),
            ),
          );
        }

        if (state is PictureErrorState) {
          return Center(
            child: Text(
              'Error fetching users',
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
        color: Colors.purple[100],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(layout.url.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
