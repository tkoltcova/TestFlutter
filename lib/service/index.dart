import 'dart:convert';
import 'package:test_flutter/models/index.dart';
import 'package:http/http.dart' as http;

class GetData{
  Future<List<Pictures>> get() async {
    String url = 'https://jsonplaceholder.typicode.com/photos';
    final res = await http.get(Uri.parse(url));

    if(res.statusCode == 200){
      final List<dynamic> pictures = jsonDecode(res.body);
      return pictures.map((json) => Pictures.fromJson(json)).toList();
    }else{
      throw Exception('Error connect');
    }
  }
}