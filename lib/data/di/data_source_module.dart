import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/data/remote/video_data_source.dart';
import 'package:video_flutter_demo/data/remote/video_file_data_source.dart';

final videoDataSourceProvider = Provider<VideoDataSource>((ref) => VideoFileDataSource());