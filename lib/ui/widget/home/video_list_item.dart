import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/video.dart';

class VideoListItem extends StatelessWidget {
  final Video video;

  const VideoListItem(this.video, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(video.thumbnailUrl),
            Text(video.title, style: const TextStyle(fontWeight: FontWeight.bold),),
            Text(" ${video.viewsTotal ?? 0} views")
          ],
        );
  }
}
