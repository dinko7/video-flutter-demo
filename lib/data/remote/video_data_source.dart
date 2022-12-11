import 'package:video_flutter_demo/domain/video.dart';

abstract class VideoDataSource {
  Future<List<Video>> getVideos();
}