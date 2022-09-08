// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

List<DataModel> dataModelFromJson(String str) => List<DataModel>.from(json.decode(str).map((x) => DataModel.fromJson(x)));

String dataModelToJson(List<DataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataModel {
  DataModel({
    this.id,
    this.label,
    this.chartPeriodCode,
    this.changePercent,
  });

  int? id;
  String? label;
  String? chartPeriodCode;
  double? changePercent;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    id: json["ID"],
    label: json["Label"],
    chartPeriodCode: json["ChartPeriodCode"],
    changePercent: json["ChangePercent"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "Label": label,
    "ChartPeriodCode": chartPeriodCode,
    "ChangePercent": changePercent,
  };
}
