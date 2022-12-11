import 'package:video_flutter_demo/data/remote/video_data_source.dart';
import 'package:video_flutter_demo/data/repo/video_repository.dart';
import 'package:video_flutter_demo/domain/video.dart';

class VideoRepositoryImpl implements VideoRepository {

  final VideoDataSource videoDataSource;

  VideoRepositoryImpl(this.videoDataSource);

  @override
  Future<List<Video>> getVideos() => videoDataSource.getVideos();

}