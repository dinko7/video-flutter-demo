import 'package:json_annotation/json_annotation.dart';
import 'package:video_flutter_demo/domain/video.dart';

part 'videos_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class VideosResponse {
  int? page;
  int? limit;
  bool? explicit;
  int? total;
  bool? hasMore;
  List<Video>? list;

  VideosResponse();

  factory VideosResponse.fromJson(Map<String, dynamic> json) => _$VideosResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VideosResponseToJson(this);
}