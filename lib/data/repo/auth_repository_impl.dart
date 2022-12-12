import 'package:firebase_auth/firebase_auth.dart';
import 'package:video_flutter_demo/data/remote/auth_data_source.dart';
import 'package:video_flutter_demo/data/repo/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {

  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<User?> login(String email, String password) => _authDataSource.login(email, password);

  @override
  Future<User?> registerUser(String email, String password) => _authDataSource.registerUser(email, password);

}