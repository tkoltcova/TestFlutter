import 'package:test_flutter/models/index.dart';
import 'index.dart';

class PicturesRepository{
  GetData _picturesProvider = GetData();
  Future<List<Pictures>> getPictures() => _picturesProvider.get();
}