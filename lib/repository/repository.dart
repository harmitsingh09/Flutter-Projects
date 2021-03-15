import 'dart:async';
import 'package:dio/dio.dart';
import 'package:newsapp/model/article_response.dart';

class NewsRepository {
  static String mainUrl = "https://newsapi.org/v2/";
  final String apiKey = "ee044cf8cf2642588c9eb5ebf6d6c4bf";

  final Dio _dio = Dio();

  var everythingUrl = "$mainUrl/everything";

  Future<ArticleResponse> getHotNews() async {
    var params = {"apiKey": apiKey, "q": "apple", "sortBy": "popularity"};
    try {
      Response response =
          await _dio.get(everythingUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ArticleResponse.withError("$error");
    }
  }
}
