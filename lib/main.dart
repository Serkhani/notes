import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/initial_bindings.dart';
import 'pages/homepage.dart';
import 'pages/splashscreen.dart';
import 'routes/routes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes(),
      debugShowCheckedModeBanner: false,
      // must be changed
      initialBinding: InitialBindings(),
      initialRoute: SplashScreen.routeName,
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
