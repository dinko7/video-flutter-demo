// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) =>
    VideosResponse()
      ..videos = (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$VideosResponseToJson(VideosResponse instance) =>
    <String, dynamic>{
      'videos': instance.videos,
    };
