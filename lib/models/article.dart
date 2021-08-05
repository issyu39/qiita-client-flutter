import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_client_flutter/models/user.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class Article with _$Article {
  factory Article({
    String? title,
    String? url,
    User? user,
    List? tags,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}