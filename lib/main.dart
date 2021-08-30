import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/routes/routes.dart';
import 'package:weatherapp/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Weather App',
      initialRoute: Routes.homeScreen,
      getPages: Routes.routes,
      enableLog: true,
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}
