import 'package:video_flutter_demo/domain/video.dart';

abstract class VideoRepository {
  Future<List<Video>> getVideos();
}