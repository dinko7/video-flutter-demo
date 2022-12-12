import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/comment.dart';

class AddCommentDialog extends StatefulWidget {
  final Function(Comment comment) onAddComment;
  const AddCommentDialog(this.onAddComment, {Key? key}) : super(key: key);

  @override
  State<AddCommentDialog> createState() => _AddCommentDialogState();
}

class _AddCommentDialogState extends State<AddCommentDialog> {
  final TextEditingController _textFieldController = TextEditingController();
  String commentContent = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Comment'),
      content: TextField(
        onChanged: (value) {
          setState(() {
            commentContent = value;
          });
        },
        controller: _textFieldController,
        decoration: const InputDecoration(hintText: ""),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            widget.onAddComment(Comment(id: DateTime.now().toString(), content: commentContent, author: "You", date: DateTime.now()));
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
      ],
    );
  }
}
