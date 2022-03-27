import 'package:get/get.dart';
import 'package:weatherapp/screens/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    
    Get.lazyPut(() => HomeController());
  }
}
