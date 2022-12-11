import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/video.dart';

import '../../tools/routes.dart';

class VideoListItem extends StatelessWidget {
  final Video _video;

  const VideoListItem(this._video, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, videoDetailsRoute(_video)),
      child: Column(
        children: [
          Image.network(_video.thumbnailUrl),
          Text(
            _video.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(_video.author ?? "")
        ],
      ),
    );
  }
}
