import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class AuthPage extends GetView<UserAuthCon> {
  const AuthPage({super.key});
  static const String routeName = "/auth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
              "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense."),
          ElevatedButton(
            onPressed: () async {
              await controller.SignInWithGoogle();
            },
            child: Row(
              children: [
                const Text("SignIn"),
                Image.asset('assets/google.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
