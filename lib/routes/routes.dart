import 'package:get/get.dart';
/// Bindings
import '../screens/login/login_binding.dart';
import '../screens/register/register_binding.dart';
import '../screens/home/home_binding.dart';
/// Screens
import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/register/register_screen.dart';

class Routes {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static var pages = [
    GetPage(
      name: login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}