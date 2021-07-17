abstract class PictureState {}

class PictureEmptyState extends PictureState {}

class PictureLoadingState extends PictureState {}

class PictureLoadedState extends PictureState {
  List<dynamic> loadedPicture;
  PictureLoadedState({required this.loadedPicture});
}

class PictureErrorState extends PictureState {}

