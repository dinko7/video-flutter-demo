// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
    )
      ..viewsTotal = json['views_total'] as int?
      ..description = json['description'] as String?
      ..duration = json['duration'] as int?
      ..comments = (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..suggestedVideos = (json['suggested_videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'thumbnail_url': instance.thumbnailUrl,
      'views_total': instance.viewsTotal,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'comments': instance.comments,
      'suggested_videos': instance.suggestedVideos,
    };
