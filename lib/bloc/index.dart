import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/bloc/event.dart';
import 'package:test_flutter/bloc/state.dart';
import 'package:test_flutter/models/index.dart';
import 'package:test_flutter/service/index.dart';

class PictureBloc extends Bloc<PictureEvent, PictureState> {
  final PicturesRepository picturesRepository;
  PictureBloc({required this.picturesRepository}) : super(PictureEmptyState());

  PictureState get initialState => PictureEmptyState();

  @override
  Stream<PictureState> mapEventToState(PictureEvent event) async* {
    if (event is PictureLoadEvent) {
      yield PictureLoadingState();
      try {
        final List<Pictures> _loadedPicturesList = await picturesRepository.getPictures();
        yield PictureLoadedState(loadedPicture: _loadedPicturesList);
      } catch (_) {
        yield PictureErrorState();
      }
    } else if (event is PictureClearEvent) {
      yield PictureEmptyState();
    }
  }

}