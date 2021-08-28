import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/screens/detail/detail_controller.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Place"),
        ),
      );
    });
  }
}
