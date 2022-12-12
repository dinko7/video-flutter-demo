import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/data/di/network_module.dart';
import 'package:video_flutter_demo/data/remote/auth_data_source.dart';
import 'package:video_flutter_demo/data/remote/firebase_auth_data_source.dart';
import 'package:video_flutter_demo/data/remote/video_data_source.dart';
import 'package:video_flutter_demo/data/remote/video_file_data_source.dart';

final videoDataSourceProvider = Provider<VideoDataSource>((ref) => VideoFileDataSource());
final authDataSourceProvider = Provider<AuthDataSource>((ref) => FirebaseAuthDataSource(ref.read(firebaseAuthProvider)));