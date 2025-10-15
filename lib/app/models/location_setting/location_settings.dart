import 'dart:convert';

class LocationSettingModel {
  LocationSettingModel({
    this.id,
    this.name,
    this.modelType,
    this.modelName,
    this.simType,
    this.simNumber,
    this.password = "",
    this.selected,
    this.isWifi,
    this.part1,
    this.part2,
    this.part3,
    this.part4,
    this.part5,
    this.part6,
    this.part7,
    this.part8,
    this.countMultiPart,
  });

  int? id;
  final String? name;
  final int? modelType;
  final String? modelName;
  final int? simType;
  final String? simNumber;
  final String password;
  int? selected;
  final int? isWifi;
  final int? countMultiPart;
  final int? part1;
  final int? part2;
  final int? part3;
  final int? part4;
  final int? part5;
  final int? part6;
  final int? part7;
  final int? part8;

  factory LocationSettingModel.fromJson(String str) => LocationSettingModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LocationSettingModel.fromMap(dynamic json) => LocationSettingModel(
        id: json["id"],
        name: json["name"],
        modelType: json["modelType"],
        modelName: json["modelName"],
        simType: json["simType"],
        simNumber: json["simNumber"],
        password: json["password"],
        selected: json["selected"],
        isWifi: json["isWifi"],
        part1: json["part1"],
        part2: json["part2"],
        part3: json["part3"],
        part4: json["part4"],
        part5: json["part5"],
        part6: json["part6"],
        part7: json["part7"],
        part8: json["part8"],
        countMultiPart: json["countMultiPart"],
      );

  dynamic toMap() => {
        "id": id,
        "name": name,
        "modelType": modelType,
        "modelName": modelName,
        "simType": simType,
        "simNumber": simNumber,
        "password": password,
        "selected": selected,
        "isWifi": isWifi,
        "part1": part1,
        "part2": part2,
        "part3": part3,
        "part4": part4,
        "part5": part5,
        "part6": part6,
        "part7": part7,
        "part8": part8,
        "countMultiPart": countMultiPart,
      };
}
