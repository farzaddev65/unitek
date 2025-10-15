import 'dart:convert';

class CodeModel {
  CodeModel({
    this.id,
    this.title,
    this.persianTitle,
    this.deviceModelId,
    this.model1,
    this.model2,
    this.model3,
    this.model4,
    this.val,
    this.a,
    this.b,
    this.c,
    this.d,
  });

  final int? id;
  final String? title;
  final String? persianTitle;
  final int? deviceModelId;
  final String? model1;
  final String? model2;
  final String? model3;
  final String? model4;
  final int? val;
  final int? a;
  final int? b;
  final int? c;
  final int? d;

  factory CodeModel.fromJson(String str) => CodeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CodeModel.fromMap(dynamic json) => CodeModel(
        id: json["id"],
        title: json["title"],
        persianTitle: json["persian_title"],
        deviceModelId: json["device_model_id"],
        model1: json["model1"],
        model2: json["model2"],
        model3: json["model3"],
        model4: json["model4"],
        val: json["val"],
        a: json["a"],
        b: json["b"],
        c: json["c"],
        d: json["d"],
      );

  dynamic toMap() => {
        "id": id,
        "title": title,
        "persian_title": persianTitle,
        "device_model_id": deviceModelId,
        "model1": model1,
        "model2": model2,
        "model3": model3,
        "model4": model4,
        "val": val,
        "a": a,
        "b": b,
        "c": c,
        "d": d,
      };
}
