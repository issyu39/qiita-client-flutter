import 'package:dio/dio.dart';
import 'package:qiita_client_flutter/models/article.dart';
import 'package:retrofit/retrofit.dart';

part 'qiita_api_client.g.dart';

// Qiita API v2
// https://qiita.com/api/v2/docs
@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  static QiitaApiClient create() {
    final dio = Dio();
    return QiitaApiClient(dio);
  }

  @GET("/items")
  Future<List<Article>> fetchArticles(
      @Query("page") String page, // ページ番号 (1から100まで)
      @Query("per_page") String perPage, // 1ページあたりに含まれる要素数 (1から100まで)
      @Query("query") String query // 検索クエリ
      );
}
