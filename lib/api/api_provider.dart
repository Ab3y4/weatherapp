import 'package:dio/dio.dart';
import 'package:weatherapp/model/data_model.dart';

class ApiProvider {
  Dio dio = Dio();

  ApiProvider() {
    dio.options.baseUrl = 'http://api.openweathermap.org/data/2.5';
  }

  Future<List<DataModel>> getWeather() async {
    try {
      Response response = await dio.get('/group', queryParameters: {
        'id': '1248991,1241622,1275339,524901,703448,2643743',
        'units': 'metric',
        'appid': '60793f8c34e42fd440f886dbb2baccc9'
      });
      if (response.statusCode == 200) {
        List<DataModel> data = List<DataModel>.from(response.data['list']
            .map((element) => DataModel.fromJson(element)));

        return data;
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      print('error $e');
    }
  }
}
