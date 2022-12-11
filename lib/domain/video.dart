import 'package:json_annotation/json_annotation.dart';

import 'comment.dart';

part 'video.g.dart';

@JsonSerializable()
class Video {
  String id;
  String thumbnailUrl;
  String title;
  String? description;
  String? author;
  String sourceUrl;
  List<Comment>? comments;
  List<Video>? suggestedVideos;

  Video({required this.id, required this.title, required this.thumbnailUrl, required this.sourceUrl});

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}