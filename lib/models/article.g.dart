// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    title: json['title'] as String?,
    url: json['url'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    tags: json['tags'] as List<dynamic>?,
    createdAt: json['created_at'] as String?,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'user': instance.user,
      'tags': instance.tags,
      'created_at': instance.createdAt,
    };
