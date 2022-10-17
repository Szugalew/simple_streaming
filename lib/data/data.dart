import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:simple_streaming/models/movie_data_model.dart';

class MovieData {
  static Future<List<MovieDataModel>> loadMovieData() async {
    final String response = await rootBundle.loadString('assets/movie_data.json');
    final data = await jsonDecode(response);
    final videos = data['videos'] as List<dynamic>;
    return videos.map((e) => MovieDataModel.fromJson(e)).toList();
  }
}
