import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/screens/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Weather App'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Card();
              }),
            )
          ],
        ),
      );
    });
  }
}
