import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/comment.dart';
import 'package:video_flutter_demo/ui/tools/date_time_extensions.dart';

class CommentItem extends StatelessWidget {
  final Comment _comment;
  
  const CommentItem(this._comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(_comment.author, style: const TextStyle(fontWeight: FontWeight.bold),),
            ),
            Text(_comment.date.timeAgo())
          ],
        ),
        Text(_comment.content, style: const TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}
