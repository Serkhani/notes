import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'bindings/auth_bindings.dart';
import 'bindings/splash_bindings.dart';
import 'pages/onboarding_screen.dart';
import 'pages/splashscreen.dart';
import 'routes/routes.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Notes",
      getPages: AppRoutes.routes(),
      debugShowCheckedModeBanner: false,
      // must be changed
      // initialBinding: SplashBindings(),
      initialBinding: SplashBindings(),
      initialRoute: "/",      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
