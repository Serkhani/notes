import 'package:get/get.dart';
import '../pages/notespage.dart';
import '../pages/homepage.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        // GetPage(name: "/splash", page: () => SplashScreen()),
        // GetPage(name: "/onboarding", page: () => SplashScreen())
        GetPage(name: "/", page: () => const MyHomePage()),
        GetPage(name: "/notes", page: () => const NotesPage())
      ];
}
