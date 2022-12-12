import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_flutter_demo/ui/tools/routes.dart';
import 'package:video_flutter_demo/view_model/user_view_model.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  String email = "";
  String password = "";

  late final userViewModel = ref.refresh(userViewModelProvider);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => email = value,
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (value) => password = value,
              decoration: const InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  userViewModel.login(email, password).then((user) {
                    if (user != null) {
                      Navigator.pushAndRemoveUntil(
                          context, homeRoute(), (route) => false);
                    }
                  });
                },
                child: const Text("Login")),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  userViewModel.registerUser(email, password).then((value) =>
                      _showSnackbar(
                          "Registration was successful. Please login now."));
                },
                child: const Text("Register")),
          ],
        ),
      ),
    );
  }

  _showSnackbar(String message) {
    var snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
