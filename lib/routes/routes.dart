import 'package:get/get.dart';
import 'package:weatherapp/screens/detail/detail_screen.dart';
import 'package:weatherapp/screens/home/home_binding.dart';
import 'package:weatherapp/screens/home/home_screen.dart';

class Routes {
  static final String homeScreen = "/";
  static final String detailScreen = "/detailScreen";

  static final routes = [
    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        binding: HomeBindings()),
    GetPage(name: Routes.detailScreen, page: () => DetailScreen())
  ];
}
