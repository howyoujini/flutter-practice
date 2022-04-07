import 'dart:convert';

import '../model/photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '26557814-c80b420be7d3574e7dc35d5af';

  Future<List<Photo>> fetch(String query) async {
    var url =
        Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo&pretty=true');
    final response = await http.get(url);

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((el) => Photo.fromJson(el)).toList();
  }
}
