import 'package:get/get.dart';
import '../pages/authpage.dart';
import '../pages/notespage.dart';
import '../pages/homepage.dart';
import '../pages/onboarding_screen.dart';
import '../pages/splashscreen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/onboading", page: () => const OnboardingScreen()),
        GetPage(name: "/auth", page: () => const AuthPage()),
        GetPage(name: "/home", page: () => const MyHomePage()),
        GetPage(name: "/notes", page: () => const NotesPage())
      ];
}
