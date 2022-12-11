import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/ui/widget/home/video_list.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("Video App Demo"),
      ),
      body: const VideoList(),
    ));
  }
}
