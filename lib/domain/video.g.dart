// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      sourceUrl: json['sourceUrl'] as String,
    )
      ..description = json['description'] as String?
      ..author = json['author'] as String?
      ..comments = (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..suggestedVideos = (json['suggestedVideos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'thumbnailUrl': instance.thumbnailUrl,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'sourceUrl': instance.sourceUrl,
      'comments': instance.comments,
      'suggestedVideos': instance.suggestedVideos,
    };
