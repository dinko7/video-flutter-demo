import 'package:flutter/material.dart';
import 'package:video_flutter_demo/domain/video.dart';
import 'package:video_flutter_demo/ui/widget/video_details/video_details_screen.dart';

MaterialPageRoute videoDetailsRoute(Video video) => MaterialPageRoute(builder: (context) => VideoDetailsScreen(video));