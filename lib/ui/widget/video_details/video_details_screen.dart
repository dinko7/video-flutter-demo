import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../../domain/video.dart';

class VideoDetailsScreen extends ConsumerStatefulWidget {
  final Video _video;

  const VideoDetailsScreen(this._video, {Key? key}) : super(key: key);

  @override
  ConsumerState<VideoDetailsScreen> createState() => _VideoDetailsScreenState();
}

class _VideoDetailsScreenState extends ConsumerState<VideoDetailsScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        widget._video.sourceUrl)
      ..initialize().then((_) {
        setState(() {
         if (!_controller.value.isPlaying) {
           _controller.play();
         }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
