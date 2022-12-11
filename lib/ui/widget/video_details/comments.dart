import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/comment.dart';
import 'package:video_flutter_demo/ui/widget/video_details/comment_item.dart';

class Comments extends StatelessWidget {
  final List<Comment> _comments;

  const Comments(this._comments, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commentsHeader(),
            ..._comments.map((comment) => CommentItem(comment)).toList(),
            addComment(() {
              //TODO:
            })
          ],
        ),
      ),
    );
  }

  Widget addComment(Function onClick) => TextButton(
      onPressed: () => onClick(), child: const Text("Add a new comment"));

  Widget commentsHeader() => Text(
        "${_comments.length} comments",
        style: const TextStyle(fontSize: 16),
      );
}
