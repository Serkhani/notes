import 'package:get/get.dart';
import '../bindings/home_bindings.dart';
import '../bindings/onboarding_binding.dart';
import '../bindings/splash_bindings.dart';
import '../pages/authpage.dart';
import '../pages/notespage.dart';
import '../pages/homepage.dart';
import '../pages/onboarding_screen.dart';
import '../pages/splashscreen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen(), binding: SplashBindings()),
        GetPage(name: "/onboarding", page: () => const OnboardingScreen(), binding: OnBoardingBindings()),
        GetPage(name: "/auth", page: () => const AuthPage()),
        GetPage(name: "/home", page: () => const MyHomePage(), binding: HomeBindings()),
        GetPage(name: "/notes", page: () => const NotesPage())
      ];
}
