import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/component/custom_card.dart';
import 'package:weatherapp/model/data_model.dart';
import 'package:weatherapp/screens/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Weather Application',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              controller.isLoading
                  ? CircularProgressIndicator()
                  : Expanded(
                      child: ListView.builder(
                          itemCount: controller.weatherData.length,
                          itemBuilder: (context, index) {
                            DataModel dataModel = controller.weatherData[index];
                            return CustomCard(
                              dataModel: dataModel,
                            );
                          }),
                    )
            ],
          ),
        ),
      );
    });
  }
}
