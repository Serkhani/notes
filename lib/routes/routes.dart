import 'package:get/get.dart';
import '../pages/notespage.dart';
import '../pages/homepage.dart';
import '../pages/splashscreen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        // GetPage(name: "/onboarding", page: () => SplashScreen())
        GetPage(name: "/home", page: () => const MyHomePage()),
        GetPage(name: "/notes", page: () => const NotesPage())
      ];
}
