import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  Future<User?> login(String email, String password);
  Future<User?> registerUser(String email, String password);
}