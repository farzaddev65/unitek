import 'dart:convert';

class OutputModel {
  OutputModel({
    this.id = 0,
    this.title = '',
    this.code = 0,
    this.status = 0,
  });

  int id;
  String title;
  int code;
  int status;

  factory OutputModel.fromJson(String str) => OutputModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OutputModel.fromMap(dynamic json) => OutputModel(
        id: json["id"] ?? 0,
        title: json["title"] ?? '',
        code: json["code"] ?? 0,
        status: json["status"] ?? 0,
      );

  dynamic toMap() => {
        "id": id,
        "title": title,
        "code": code,
        "status": status,
      };
}
