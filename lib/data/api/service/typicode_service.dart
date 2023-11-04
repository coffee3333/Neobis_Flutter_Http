import 'package:dio/dio.dart';

class TypicodeService {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  final Dio _dio = Dio();

  Future<List<dynamic>> getArticles() async {
    List<dynamic> posts = [];
    try {
      Response response = await _dio.get(_baseUrl);
      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the JSON response
        posts = response.data;
        // mapData(dataList: posts);
        return posts;
      }
      // If request doesn't have status 200, then return empty list
      return posts;
    } catch (error) {
      // Handle DioError exceptions, if any
      // print('Error: $error');
      // If problem with request, then return empty list
      return posts;
    }
  }
}
