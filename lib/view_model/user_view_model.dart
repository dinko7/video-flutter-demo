import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/data/di/repository_module.dart';
import 'package:video_flutter_demo/data/repo/auth_repository.dart';
import 'package:video_flutter_demo/view_model/base_view_model.dart';

final userViewModelProvider = Provider((ref) => UserViewModel(ref, ref.read(authRepositoryProvider)));

class UserViewModel extends BaseViewModel {
  final AuthRepository _authRepository;
  UserViewModel(ProviderRef ref, this._authRepository) : super(ref);

  Future<User?> login(String email, String password) => _authRepository.login(email, password);
  Future<User?> registerUser(String email, String password) => _authRepository.registerUser(email, password);
}