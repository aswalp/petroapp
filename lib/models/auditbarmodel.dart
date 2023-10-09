// To parse this JSON data, do
//
//     final auditBarModel = auditBarModelFromJson(jsonString);

import 'dart:convert';

List<AuditBarModel> auditBarModelFromJson(String str) =>
    List<AuditBarModel>.from(
        json.decode(str).map((x) => AuditBarModel.fromJson(x)));

String auditBarModelToJson(List<AuditBarModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AuditBarModel {
  String? item;
  int? count;
  String? colour;
  String? icon;
  String? screenUrl;
  String? screenCode;
  String? screenTitle;

  AuditBarModel({
    this.item,
    this.count,
    this.colour,
    this.icon,
    this.screenUrl,
    this.screenCode,
    this.screenTitle,
  });

  factory AuditBarModel.fromJson(Map<String, dynamic> json) => AuditBarModel(
        item: json["Item"],
        count: json["Count"],
        colour: json["Colour"],
        icon: json["Icon"],
        screenUrl: json["ScreenUrl"],
        screenCode: json["ScreenCode"],
        screenTitle: json["ScreenTitle"],
      );

  Map<String, dynamic> toJson() => {
        "Item": item,
        "Count": count,
        "Colour": colour,
        "Icon": icon,
        "ScreenUrl": screenUrl,
        "ScreenCode": screenCode,
        "ScreenTitle": screenTitle,
      };
}
