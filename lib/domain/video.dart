import 'package:json_annotation/json_annotation.dart';

import 'comment.dart';

part 'video.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Video {
  String id;
  String thumbnailUrl;
  int? viewsTotal;
  String title;
  String? description;
  int? duration;
  List<Comment>? comments;
  List<Video>? suggestedVideos;

  Video({required this.id, required this.title, required this.thumbnailUrl});

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}