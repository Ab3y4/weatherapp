// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.sys,
    this.weather,
    this.main,
    this.name,
  });

  Sys sys;
  List<Weather> weather;
  Main main;
  String name;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        sys: Sys.fromJson(json["sys"]),
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        main: Main.fromJson(json["main"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "sys": sys.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "main": main.toJson(),
        "name": name,
      };
}

class Main {
  Main({
    this.temp,
  });

  double temp;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
      };
}

class Sys {
  Sys({
    this.sunrise,
    this.sunset,
  });

  int sunrise;
  int sunset;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        sunrise: json["sunrise"],
        sunset: json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "sunrise": sunrise,
        "sunset": sunset,
      };
}

class Weather {
  Weather({
    this.main,
    this.description,
  });

  String main;
  String description;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        main: json["main"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "main": main,
        "description": description,
      };
}
