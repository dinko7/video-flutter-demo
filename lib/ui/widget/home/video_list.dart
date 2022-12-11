import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/ui/widget/home/video_list_item.dart';
import 'package:video_flutter_demo/view_model/video_view_model.dart';

class VideoList extends ConsumerStatefulWidget {

  const VideoList({Key? key}) : super(key: key);

  @override
  ConsumerState<VideoList> createState() => _VideoListState();
}

class _VideoListState extends ConsumerState<VideoList> {

  late final videoViewModel = ref.refresh(videoViewModelProvider);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      videoViewModel.getVideos();
    });
  }

  @override
  Widget build(BuildContext context) {
    final videos = ref.watch(videoViewModel.videos);

    return ListView(
      children: videos.map((video) => VideoListItem(video)).toList(),
    );
  }
}
