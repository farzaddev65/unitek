import 'dart:convert';

class DeviceModel {
  DeviceModel({
    this.id,
    this.model,
    this.selected,
    this.hasWifi,
    this.countMultiPart,
  });

   int? id;
   String? model;
   int? selected;
   int? hasWifi;
   int? countMultiPart;

  factory DeviceModel.fromJson(String str) => DeviceModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DeviceModel.fromMap(dynamic json) => DeviceModel(
        id: json["id"],
        model: json["model"],
        selected: json["selected"],
        hasWifi: json["hasWifi"],
    countMultiPart: json["countMultiPart"],
      );

  dynamic toMap() => {
        "id": id,
        "model": model,
        "selected": selected,
        "hasWifi": hasWifi,
        "countMultiPart": countMultiPart,
      };
}
