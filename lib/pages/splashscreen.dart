import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 50.0,
          width: 50.0, 
          child: CircularProgressIndicator()
        )
      )
    );
  }
}