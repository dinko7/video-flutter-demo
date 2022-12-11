// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) =>
    VideosResponse()
      ..page = json['page'] as int?
      ..limit = json['limit'] as int?
      ..explicit = json['explicit'] as bool?
      ..total = json['total'] as int?
      ..hasMore = json['has_more'] as bool?
      ..list = (json['list'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$VideosResponseToJson(VideosResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'explicit': instance.explicit,
      'total': instance.total,
      'has_more': instance.hasMore,
      'list': instance.list,
    };
