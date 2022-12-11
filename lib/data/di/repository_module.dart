import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/data/di/data_source_module.dart';
import 'package:video_flutter_demo/data/repo/video_repository.dart';
import 'package:video_flutter_demo/data/repo/video_repository_impl.dart';

final videoRepositoryProvider = Provider<VideoRepository>((ref) => VideoRepositoryImpl(ref.read(videoDataSourceProvider)));