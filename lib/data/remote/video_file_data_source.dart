import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:video_flutter_demo/data/remote/response/videos_response.dart';
import 'package:video_flutter_demo/data/remote/video_data_source.dart';
import 'package:video_flutter_demo/domain/video.dart';

class VideoFileDataSource implements VideoDataSource {

  static const String _videoJson = "assets/video.json";

  @override
  Future<List<Video>> getVideos() async {
    final json = await rootBundle.loadString(_videoJson);
    final videosResponse = VideosResponse.fromJson(jsonDecode(json));
    return videosResponse.videos ?? List.empty();
  }
}