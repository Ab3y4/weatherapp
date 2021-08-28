import 'package:get/get.dart';
import 'package:weatherapp/screens/home/home_screen.dart';

class Routes {
  static final String homeScreen = "/";
  static final String detailScreen = "/detailScreen";

  static final routes = [
    GetPage(name: Routes.homeScreen, page: () => HomeScreen()),
    // GetPage(name: Routes.detailScreen, page: ()=>HomeScreen())
  ];
}
