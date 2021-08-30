import 'package:get/get.dart';
import 'package:weatherapp/api/api_provider.dart';
import 'package:weatherapp/model/data_model.dart';

class HomeController extends GetxController {
  String text = 'My Weather Application';
  bool isLoading = true;
  List<DataModel> weatherData = [];

  ApiProvider apiProvider = ApiProvider();
  @override
  void onInit() async {
    weatherData.addAll(await apiProvider.getWeather());
    isLoading = false;
    update();
    super.onInit();
  }
}
