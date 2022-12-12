import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/comment.dart';
import 'package:video_flutter_demo/ui/widget/video_details/add_comment_dialog.dart';
import 'package:video_flutter_demo/ui/widget/video_details/comment_item.dart';

class Comments extends StatefulWidget {
  final List<Comment> _comments;

  const Comments(this._comments, {Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  late List<Comment> comments = widget._comments.toList();

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
            ...comments.map((comment) => CommentItem(comment)).toList(),
            addComment(() => showDialog(
                context: context,
                builder: (context) {
                  return AddCommentDialog((comment) {
                    setState(() {
                      comments.add(comment);
                    });
                  });
                }))
          ],
        ),
      ),
    );
  }

  Widget addComment(Function onClick) => TextButton(
      onPressed: () => onClick(), child: const Text("Add a new comment"));

  Widget commentsHeader() => Text(
        "${comments.length} comments",
        style: const TextStyle(fontSize: 16),
      );
}
