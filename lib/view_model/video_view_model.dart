import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/data/di/repository_module.dart';
import 'package:video_flutter_demo/data/repo/video_repository.dart';
import 'package:video_flutter_demo/domain/video.dart';
import 'package:video_flutter_demo/view_model/base_view_model.dart';

final videoViewModelProvider = Provider((ref) => VideoViewModel(ref, ref.read(videoRepositoryProvider)));

class VideoViewModel extends BaseViewModel {
  VideoViewModel(ProviderRef ref, this._videoRepository) : super(ref);

  final VideoRepository _videoRepository;

  final videos = StateProvider<List<Video>>((_) => List.empty());

  getVideos() {
    executeUseCase(useCase: () async {
      final response = await _videoRepository.getVideos();
      updateState(videos, response);
    });
  }
}