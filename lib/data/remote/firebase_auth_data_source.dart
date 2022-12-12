import 'package:video_flutter_demo/data/remote/auth_data_source.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthDataSource implements AuthDataSource {

  FirebaseAuthDataSource(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> login(String email, String password) async {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return credential.user;
  }

  @override
  Future<User?> registerUser(String email, String password) async {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
  }
}